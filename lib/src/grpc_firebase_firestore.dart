import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart' as firestore_interface;
import 'package:grpc_cloud_firestore/src/grpc_field_value_factory_platform.dart';

class GrpcFirebaseFirestore implements FirebaseFirestore {
  GrpcFirebaseFirestore() {
    firestore_interface.FieldValueFactoryPlatform.instance = GrpcFieldValueFactoryPlatform();
  }

  @override
  CollectionReference<Map<String, dynamic>> collection(String path) {
    final segments = path.split('/');
    assert(segments.length % 2 == 1, 'Invalid document reference. Collection references must have an odd number of segments');
    throw UnimplementedError();
    // return MockCollectionReference<Map<String, dynamic>>(
    //     this, path, getSubpath(_root, path), _docsData, getSubpath(_snapshotStreamControllerRoot, path));
  }

  @override
  CollectionReference<Map<String, dynamic>> collectionGroup(String collectionId) {
    assert(!collectionId.contains('/'), 'Collection ID should not contain "/"');
    throw UnimplementedError();
  }

  @override
  DocumentReference<Map<String, dynamic>> doc(String path) {
    // Remove the starting '/' if found, like the actual Firestore.
    if (path.startsWith('/')) {
      path = path.substring(1);
    }
    final segments = path.split('/');
    // The actual behavior of Firestore for an invalid number of segments
    // differs by platforms. This library imitates it with assert.
    // https://github.com/atn832/fake_cloud_firestore/issues/30
    assert(segments.length % 2 == 0, 'Invalid document reference. Document references must have an even number of segments');
    final documentId = segments.last;
    throw UnimplementedError();
  }

  @override
  WriteBatch batch() {
    throw UnimplementedError();
  }

  @override
  Future<T> runTransaction<T>(TransactionHandler<T> transactionHandler,
      {Duration timeout = const Duration(seconds: 30), int maxAttempts = 5}) async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearPersistence() {
    throw UnimplementedError();
  }

  @override
  bool operator ==(Object? other) =>
      other is GrpcFirebaseFirestore ? other.app == app && other.databaseURL == other.databaseURL : false;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  int get hashCode => Object.hash(app.name, app.options);
}
