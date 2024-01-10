import 'package:cloud_firestore/cloud_firestore.dart';

final class GrpcWriteBatch implements WriteBatch {
  @override
  Future<void> commit() {
    // TODO: implement commit
    throw UnimplementedError();
  }

  @override
  void delete(DocumentReference<Object?> document) {
    // TODO: implement delete
  }

  @override
  void set<T>(DocumentReference<T> document, T data, [SetOptions? options]) {
    // TODO: implement set
  }

  @override
  void update(DocumentReference<Object?> document, Map<String, dynamic> data) {
    // TODO: implement update
  }
}
