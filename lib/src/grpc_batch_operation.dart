import 'package:cloud_firestore/cloud_firestore.dart';

sealed class GrpcBatchOperation<T extends Object?> {
  final DocumentReference<T> document;

  GrpcBatchOperation({required this.document});
}

final class GrpcBatchDeleteOperation extends GrpcBatchOperation {
  GrpcBatchDeleteOperation({required super.document});
}

final class GrpcBatchSetOperation<T> extends GrpcBatchOperation {
  final SetOptions? setOptions;
  final T data;

  GrpcBatchSetOperation({required this.setOptions, required this.data, required super.document});
}

final class GrpcBatchUpdateOperation extends GrpcBatchOperation {
  final Map<String, dynamic> data;

  GrpcBatchUpdateOperation({required this.data, required super.document});
}
