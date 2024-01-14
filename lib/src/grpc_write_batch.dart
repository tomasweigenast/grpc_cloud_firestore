import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grpc_cloud_firestore/src/firestore_gateway.dart';
import 'package:grpc_cloud_firestore/src/grpc_batch_operation.dart';

final class GrpcWriteBatch implements WriteBatch {
  final FirestoreGateway _firestoreGateway;
  final _operations = <GrpcBatchOperation>[];
  int _size = 0;

  GrpcWriteBatch(this._firestoreGateway);

  @override
  Future<void> commit() async {}

  @override
  void delete(DocumentReference<Object?> document) {
    _ensureSize();
    _operations.add(GrpcBatchDeleteOperation(document: document));
    _size++;
  }

  @override
  void set<T>(DocumentReference<T> document, T data, [SetOptions? options]) {
    _ensureSize();
    _operations.add(GrpcBatchSetOperation<T>(document: document, data: data, setOptions: options));
    _size++;
  }

  @override
  void update(DocumentReference<Object?> document, Map<String, dynamic> data) {
    _ensureSize();
    _operations.add(GrpcBatchUpdateOperation(document: document, data: data));
    _size++;
  }

  void _ensureSize() {
    if (_size == 500) {
      throw Exception("Firestore batches cannot have more than 500 operations.");
    }
  }
}
