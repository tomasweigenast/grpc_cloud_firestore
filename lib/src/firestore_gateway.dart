import 'package:grpc/grpc.dart';
import 'package:grpc_cloud_firestore/src/generated/google/firestore/v1/document.pb.dart';
import 'package:grpc_cloud_firestore/src/generated/google/firestore/v1/firestore.pbgrpc.dart';
import 'package:grpc_cloud_firestore/src/utils.dart';

/// The [FirestoreGateway] is a bridge between FirebaseFirestore API and gRPC API
final class FirestoreGateway {
  final FirestoreClient _firestoreClient;
  final ClientChannel _clientChannel;

  FirestoreGateway._(this._firestoreClient, this._clientChannel);

  factory FirestoreGateway() {
    final callOptions = CallOptions();
    final channel = ClientChannel("firestore.googleapis.com", options: const ChannelOptions());
    final client = FirestoreClient(channel, options: callOptions);

    return FirestoreGateway._(client, channel);
  }

  void close() {
    _clientChannel.shutdown();
  }

  Future<void> createDocument(Map<String, dynamic> data) async {
    final document = Document(
        fields: data.map((key, value) => MapEntry(key, toFirestoreValue(value))), name: "");
  }
}
