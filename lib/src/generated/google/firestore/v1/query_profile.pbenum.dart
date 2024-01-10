//
//  Generated code. Do not modify.
//  source: google/firestore/v1/query_profile.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The mode in which the query request must be processed.
class QueryMode extends $pb.ProtobufEnum {
  static const QueryMode NORMAL = QueryMode._(0, _omitEnumNames ? '' : 'NORMAL');
  static const QueryMode PLAN = QueryMode._(1, _omitEnumNames ? '' : 'PLAN');
  static const QueryMode PROFILE = QueryMode._(2, _omitEnumNames ? '' : 'PROFILE');

  static const $core.List<QueryMode> values = <QueryMode> [
    NORMAL,
    PLAN,
    PROFILE,
  ];

  static final $core.Map<$core.int, QueryMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static QueryMode? valueOf($core.int value) => _byValue[value];

  const QueryMode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
