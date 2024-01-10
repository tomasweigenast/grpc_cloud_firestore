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

import '../../protobuf/struct.pb.dart' as $0;

export 'query_profile.pbenum.dart';

/// Plan for the query.
class QueryPlan extends $pb.GeneratedMessage {
  factory QueryPlan({
    $0.Struct? planInfo,
  }) {
    final $result = create();
    if (planInfo != null) {
      $result.planInfo = planInfo;
    }
    return $result;
  }
  QueryPlan._() : super();
  factory QueryPlan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPlan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryPlan', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'), createEmptyInstance: create)
    ..aOM<$0.Struct>(1, _omitFieldNames ? '' : 'planInfo', subBuilder: $0.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPlan clone() => QueryPlan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPlan copyWith(void Function(QueryPlan) updates) => super.copyWith((message) => updates(message as QueryPlan)) as QueryPlan;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryPlan create() => QueryPlan._();
  QueryPlan createEmptyInstance() => create();
  static $pb.PbList<QueryPlan> createRepeated() => $pb.PbList<QueryPlan>();
  @$core.pragma('dart2js:noInline')
  static QueryPlan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPlan>(create);
  static QueryPlan? _defaultInstance;

  ///  Planning phase information for the query. It will include:
  ///
  ///  {
  ///    "indexes_used": [
  ///      {"query_scope": "Collection", "properties": "(foo ASC, __name__ ASC)"},
  ///      {"query_scope": "Collection", "properties": "(bar ASC, __name__ ASC)"}
  ///    ]
  ///  }
  @$pb.TagNumber(1)
  $0.Struct get planInfo => $_getN(0);
  @$pb.TagNumber(1)
  set planInfo($0.Struct v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlanInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlanInfo() => clearField(1);
  @$pb.TagNumber(1)
  $0.Struct ensurePlanInfo() => $_ensure(0);
}

/// Planning and execution statistics for the query.
class ResultSetStats extends $pb.GeneratedMessage {
  factory ResultSetStats({
    QueryPlan? queryPlan,
    $0.Struct? queryStats,
  }) {
    final $result = create();
    if (queryPlan != null) {
      $result.queryPlan = queryPlan;
    }
    if (queryStats != null) {
      $result.queryStats = queryStats;
    }
    return $result;
  }
  ResultSetStats._() : super();
  factory ResultSetStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResultSetStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResultSetStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'), createEmptyInstance: create)
    ..aOM<QueryPlan>(1, _omitFieldNames ? '' : 'queryPlan', subBuilder: QueryPlan.create)
    ..aOM<$0.Struct>(2, _omitFieldNames ? '' : 'queryStats', subBuilder: $0.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResultSetStats clone() => ResultSetStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResultSetStats copyWith(void Function(ResultSetStats) updates) => super.copyWith((message) => updates(message as ResultSetStats)) as ResultSetStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResultSetStats create() => ResultSetStats._();
  ResultSetStats createEmptyInstance() => create();
  static $pb.PbList<ResultSetStats> createRepeated() => $pb.PbList<ResultSetStats>();
  @$core.pragma('dart2js:noInline')
  static ResultSetStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResultSetStats>(create);
  static ResultSetStats? _defaultInstance;

  /// Plan for the query.
  @$pb.TagNumber(1)
  QueryPlan get queryPlan => $_getN(0);
  @$pb.TagNumber(1)
  set queryPlan(QueryPlan v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueryPlan() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueryPlan() => clearField(1);
  @$pb.TagNumber(1)
  QueryPlan ensureQueryPlan() => $_ensure(0);

  ///  Aggregated statistics from the execution of the query.
  ///
  ///  This will only be present when the request specifies `PROFILE` mode.
  ///  For example, a query will return the statistics including:
  ///
  ///  {
  ///    "results_returned": "20",
  ///    "documents_scanned": "20",
  ///    "indexes_entries_scanned": "10050",
  ///    "total_execution_time": "100.7 msecs"
  ///  }
  @$pb.TagNumber(2)
  $0.Struct get queryStats => $_getN(1);
  @$pb.TagNumber(2)
  set queryStats($0.Struct v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQueryStats() => $_has(1);
  @$pb.TagNumber(2)
  void clearQueryStats() => clearField(2);
  @$pb.TagNumber(2)
  $0.Struct ensureQueryStats() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
