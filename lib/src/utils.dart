import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc_cloud_firestore/src/generated/google/firestore/v1/document.pb.dart' as pb;
import 'package:grpc_cloud_firestore/src/generated/google/protobuf/struct.pb.dart' as pb hide Value;
import 'package:grpc_cloud_firestore/src/generated/google/protobuf/timestamp.pb.dart' as pb;

const kDeepCollectionEquality = DeepCollectionEquality();

typedef TransformValueFunction = dynamic Function(dynamic value);

dynamic transformValue(dynamic value, TransformValueFunction transformation) {
  if (value is Map<String, dynamic>) {
    return value.map((key, value) => MapEntry(key, transformValue(value, transformation)));
  }

  if (value is Iterable) {
    return value.map((e) => transformValue(e, transformation)).toList();
  }

  return transformation(value);
}

dynamic timestampFromDateTime(dynamic value) {
  if (value is DateTime) {
    return firestore.Timestamp.fromDate(value);
  }

  return value;
}

pb.Value toFirestoreValue(dynamic value) {
  if (value == null) {
    return pb.Value(nullValue: pb.NullValue.NULL_VALUE);
  }

  switch (value) {
    case String v:
      return pb.Value(stringValue: v);

    case bool v:
      return pb.Value(booleanValue: v);

    case int v:
      return pb.Value(integerValue: Int64(v));

    case Int64 v:
      return pb.Value(integerValue: v);

    case double v:
      return pb.Value(doubleValue: v);

    case DateTime v:
      return pb.Value(timestampValue: pb.Timestamp.fromDateTime(v));

    case pb.Timestamp v:
      return pb.Value(timestampValue: v);

    case List<int> v:
      return pb.Value(bytesValue: v);

    case List v:
      return pb.Value(arrayValue: pb.ArrayValue(values: v.map((e) => toFirestoreValue(e))));

    case Map v:
      return pb.Value(
          mapValue:
              pb.MapValue(fields: v.map((key, value) => MapEntry(key, toFirestoreValue(value)))));

    default:
      throw UnsupportedError("Type ${value.runtimeType} is not supported by Firestore.");
  }
}
