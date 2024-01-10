import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart';
import 'package:grpc_cloud_firestore/src/utils.dart';

abstract class GrpcFieldValue {
  const GrpcFieldValue();

  static const delete = FieldValueDelete();
  static final serverTimestamp = FieldValueServerTimestamp();

  void updateDocument(Map<String, dynamic> document, String key);
}

final class FieldValueServerTimestamp extends GrpcFieldValue {
  FieldValueServerTimestamp();

  Timestamp get now => Timestamp.fromDate(DateTime.now());

  @override
  void updateDocument(Map<String, dynamic> document, String key) {
    document[key] = now;
  }
}

final class FieldValueDelete extends GrpcFieldValue {
  const FieldValueDelete();

  @override
  void updateDocument(Map<String, dynamic> document, String key) {
    document.remove(key);
  }
}

final class FieldValueIncrement extends GrpcFieldValue {
  final num value;

  const FieldValueIncrement(this.value);

  @override
  void updateDocument(Map<String, dynamic> document, String key) {
    final previousValue = document[key];
    final previousNumber = previousValue is num ? previousValue : 0;
    final newValue = previousNumber + value;
    document[key] = newValue;
  }
}

class FieldValueArrayUnion extends GrpcFieldValue {
  final List<dynamic> elements;

  FieldValueArrayUnion(List<dynamic> elements) : elements = transformValue(elements, timestampFromDateTime);

  @override
  void updateDocument(Map<String, dynamic> document, String key) {
    final previousValue = document[key];
    final updatedValue = previousValue is List ? List.from(previousValue) : [];
    for (final item in elements) {
      if (!updatedValue.any((element) => kDeepCollectionEquality.equals(element, item))) {
        updatedValue.add(item);
      }
    }
    document[key] = updatedValue;
  }
}

class FieldValueArrayRemove extends GrpcFieldValue {
  final List<dynamic> elements;

  FieldValueArrayRemove(List<dynamic> elements) : elements = transformValue(elements, timestampFromDateTime);

  @override
  void updateDocument(Map<String, dynamic> document, String key) {
    final previousValue = document[key];
    final updatedValue = previousValue is List ? List.from(previousValue) : [];
    updatedValue.removeWhere((item) => elements.any((element) => kDeepCollectionEquality.equals(element, item)));
    document[key] = updatedValue;
  }
}

class GrpcFieldValuePlatform implements FieldValuePlatform {
  final GrpcFieldValue value;

  GrpcFieldValuePlatform(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is GrpcFieldValuePlatform && other.value == value;
}
