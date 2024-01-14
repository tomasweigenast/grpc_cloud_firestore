import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grpc_cloud_firestore/src/grpc_query.dart';

// ignore: subtype_of_sealed_class
final class GrpcCollectionReference<T extends Object?> extends GrpcQuery<T> implements CollectionReference<T> {
  @override
  Future<DocumentReference<T>> add(T data) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  DocumentReference<T> doc([String? path]) {
    // TODO: implement doc
    throw UnimplementedError();
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  // TODO: implement parent
  DocumentReference<Map<String, dynamic>>? get parent => throw UnimplementedError();

  @override
  // TODO: implement path
  String get path => throw UnimplementedError();
}
