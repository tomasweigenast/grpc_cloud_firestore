import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';

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
    return Timestamp.fromDate(value);
  }

  return value;
}
