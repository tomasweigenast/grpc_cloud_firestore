import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart';
import 'package:grpc_cloud_firestore/src/grpc_field_value_platform.dart';

class GrpcFieldValueFactoryPlatform extends FieldValueFactoryPlatform {
  @override
  FieldValuePlatform arrayRemove(List elements) => GrpcFieldValuePlatform(FieldValueArrayRemove(elements));

  @override
  FieldValuePlatform arrayUnion(List elements) => GrpcFieldValuePlatform(FieldValueArrayUnion(elements));

  @override
  FieldValuePlatform delete() => GrpcFieldValuePlatform(GrpcFieldValue.delete);

  @override
  FieldValuePlatform increment(num value) => GrpcFieldValuePlatform(FieldValueIncrement(value));

  @override
  FieldValuePlatform serverTimestamp() => GrpcFieldValuePlatform(GrpcFieldValue.serverTimestamp);
}
