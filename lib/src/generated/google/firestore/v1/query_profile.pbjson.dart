//
//  Generated code. Do not modify.
//  source: google/firestore/v1/query_profile.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryModeDescriptor instead')
const QueryMode$json = {
  '1': 'QueryMode',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'PLAN', '2': 1},
    {'1': 'PROFILE', '2': 2},
  ],
};

/// Descriptor for `QueryMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List queryModeDescriptor = $convert.base64Decode(
    'CglRdWVyeU1vZGUSCgoGTk9STUFMEAASCAoEUExBThABEgsKB1BST0ZJTEUQAg==');

@$core.Deprecated('Use queryPlanDescriptor instead')
const QueryPlan$json = {
  '1': 'QueryPlan',
  '2': [
    {'1': 'plan_info', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'planInfo'},
  ],
};

/// Descriptor for `QueryPlan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPlanDescriptor = $convert.base64Decode(
    'CglRdWVyeVBsYW4SNAoJcGxhbl9pbmZvGAEgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdF'
    'IIcGxhbkluZm8=');

@$core.Deprecated('Use resultSetStatsDescriptor instead')
const ResultSetStats$json = {
  '1': 'ResultSetStats',
  '2': [
    {'1': 'query_plan', '3': 1, '4': 1, '5': 11, '6': '.google.firestore.v1.QueryPlan', '10': 'queryPlan'},
    {'1': 'query_stats', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'queryStats'},
  ],
};

/// Descriptor for `ResultSetStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultSetStatsDescriptor = $convert.base64Decode(
    'Cg5SZXN1bHRTZXRTdGF0cxI9CgpxdWVyeV9wbGFuGAEgASgLMh4uZ29vZ2xlLmZpcmVzdG9yZS'
    '52MS5RdWVyeVBsYW5SCXF1ZXJ5UGxhbhI4CgtxdWVyeV9zdGF0cxgCIAEoCzIXLmdvb2dsZS5w'
    'cm90b2J1Zi5TdHJ1Y3RSCnF1ZXJ5U3RhdHM=');

