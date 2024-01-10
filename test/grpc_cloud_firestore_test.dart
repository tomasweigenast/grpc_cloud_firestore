import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc_cloud_firestore/src/grpc_firebase_firestore.dart';

void main() {
  test("try", () {
    final FirebaseFirestore instance = GrpcFirebaseFirestore();
    expect(() => instance.batch(), throwsUnimplementedError);
  });
}
