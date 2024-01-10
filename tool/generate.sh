#!/usr/bin/env bash
# This generates Firestore API stub models

# E:\Tools\protoc

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to the root of your Protobuf installation."
  exit -1
fi

GOOGLEAPIS=protostemp
PROTOAPIS=$PROTOBUF/include/google/protobuf

PROTOC="protoc --dart_out=grpc:lib/src/generated -I$PROTOAPIS -I$GOOGLEAPIS"

rm -rf protostemp
git clone https://github.com/googleapis/googleapis.git protostemp

protoc --dart_out=grpc:lib/src/generated $PROTOAPIS/wrappers.proto
protoc --dart_out=grpc:lib/src/generated $PROTOAPIS/any.proto
protoc --dart_out=grpc:lib/src/generated $PROTOAPIS/empty.proto
protoc --dart_out=grpc:lib/src/generated $PROTOAPIS/struct.proto
protoc --dart_out=grpc:lib/src/generated $PROTOAPIS/timestamp.proto

protoc --dart_out=grpc:lib/src/generated -I$GOOGLEAPIS google/rpc/status.proto
protoc --dart_out=grpc:lib/src/generated -I$GOOGLEAPIS google/type/latlng.proto

$PROTOC $GOOGLEAPIS/google/firestore/v1/common.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/write.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/query.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/query_profile.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/firestore.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/document.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/bloom_filter.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/aggregation_result.proto

rm -rf protostemp

echo "Protobuf stubs generated."
