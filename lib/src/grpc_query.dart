import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart' hide AggregateQuery;

// ignore: subtype_of_sealed_class
class GrpcQuery<T extends Object?> implements Query<T> {
  @override
  AggregateQuery aggregate(AggregateField aggregateField1,
      [AggregateField? aggregateField2,
      AggregateField? aggregateField3,
      AggregateField? aggregateField4,
      AggregateField? aggregateField5,
      AggregateField? aggregateField6,
      AggregateField? aggregateField7,
      AggregateField? aggregateField8,
      AggregateField? aggregateField9,
      AggregateField? aggregateField10,
      AggregateField? aggregateField11,
      AggregateField? aggregateField12,
      AggregateField? aggregateField13,
      AggregateField? aggregateField14,
      AggregateField? aggregateField15,
      AggregateField? aggregateField16,
      AggregateField? aggregateField17,
      AggregateField? aggregateField18,
      AggregateField? aggregateField19,
      AggregateField? aggregateField20,
      AggregateField? aggregateField21,
      AggregateField? aggregateField22,
      AggregateField? aggregateField23,
      AggregateField? aggregateField24,
      AggregateField? aggregateField25,
      AggregateField? aggregateField26,
      AggregateField? aggregateField27,
      AggregateField? aggregateField28,
      AggregateField? aggregateField29,
      AggregateField? aggregateField30]) {
    // TODO: implement aggregate
    throw UnimplementedError();
  }

  @override
  AggregateQuery count() {
    // TODO: implement count
    throw UnimplementedError();
  }

  @override
  Query<T> endAt(Iterable<Object?> values) {
    // TODO: implement endAt
    throw UnimplementedError();
  }

  @override
  Query<T> endAtDocument(DocumentSnapshot<Object?> documentSnapshot) {
    // TODO: implement endAtDocument
    throw UnimplementedError();
  }

  @override
  Query<T> endBefore(Iterable<Object?> values) {
    // TODO: implement endBefore
    throw UnimplementedError();
  }

  @override
  Query<T> endBeforeDocument(DocumentSnapshot<Object?> documentSnapshot) {
    // TODO: implement endBeforeDocument
    throw UnimplementedError();
  }

  @override
  // TODO: implement firestore
  FirebaseFirestore get firestore => throw UnimplementedError();

  @override
  Future<QuerySnapshot<T>> get([GetOptions? options]) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Query<T> limit(int limit) {
    // TODO: implement limit
    throw UnimplementedError();
  }

  @override
  Query<T> limitToLast(int limit) {
    // TODO: implement limitToLast
    throw UnimplementedError();
  }

  @override
  Query<T> orderBy(Object field, {bool descending = false}) {
    // TODO: implement orderBy
    throw UnimplementedError();
  }

  @override
  // TODO: implement parameters
  Map<String, dynamic> get parameters => throw UnimplementedError();

  @override
  Stream<QuerySnapshot<T>> snapshots({bool includeMetadataChanges = false}) {
    // TODO: implement snapshots
    throw UnimplementedError();
  }

  @override
  Query<T> startAfter(Iterable<Object?> values) {
    // TODO: implement startAfter
    throw UnimplementedError();
  }

  @override
  Query<T> startAfterDocument(DocumentSnapshot<Object?> documentSnapshot) {
    // TODO: implement startAfterDocument
    throw UnimplementedError();
  }

  @override
  Query<T> startAt(Iterable<Object?> values) {
    // TODO: implement startAt
    throw UnimplementedError();
  }

  @override
  Query<T> startAtDocument(DocumentSnapshot<Object?> documentSnapshot) {
    // TODO: implement startAtDocument
    throw UnimplementedError();
  }

  @override
  Query<T> where(Object field,
      {Object? isEqualTo,
      Object? isNotEqualTo,
      Object? isLessThan,
      Object? isLessThanOrEqualTo,
      Object? isGreaterThan,
      Object? isGreaterThanOrEqualTo,
      Object? arrayContains,
      Iterable<Object?>? arrayContainsAny,
      Iterable<Object?>? whereIn,
      Iterable<Object?>? whereNotIn,
      bool? isNull}) {
    // TODO: implement where
    throw UnimplementedError();
  }

  @override
  Query<R> withConverter<R>({required FromFirestore<R> fromFirestore, required ToFirestore<R> toFirestore}) {
    // TODO: implement withConverter
    throw UnimplementedError();
  }
}
