import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: subtype_of_sealed_class
class GrpcDocumentReference<T extends Object?> implements DocumentReference<T> {
  final FirebaseFirestore _firestore;
  final CollectionReference<T> _parent;
  final String _id;
  final String _path;

  GrpcDocumentReference(this._firestore, this._parent, this._id, this._path);

  @override
  CollectionReference<Map<String, dynamic>> collection(String collectionPath) {
    // TODO: implement collection
    throw UnimplementedError();
  }

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  FirebaseFirestore get firestore => this._firestore;

  @override
  Future<DocumentSnapshot<T>> get([GetOptions? options]) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  String get id => _id;

  @override
  CollectionReference<T> get parent => _parent;

  @override
  String get path => _path;

  @override
  Future<void> set(T data, [SetOptions? options]) {
    // TODO: implement set
    throw UnimplementedError();
  }

  @override
  Stream<DocumentSnapshot<T>> snapshots({bool includeMetadataChanges = false}) {
    // TODO: implement snapshots
    throw UnimplementedError();
  }

  @override
  Future<void> update(Map<Object, Object?> data) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  DocumentReference<R> withConverter<R>({required FromFirestore<R> fromFirestore, required ToFirestore<R> toFirestore}) {
    // TODO: implement withConverter
    throw UnimplementedError();
  }
}
