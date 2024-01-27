import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StripPaymentRecord extends FirestoreRecord {
  StripPaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email_payment_id" field.
  String? _emailPaymentId;
  String get emailPaymentId => _emailPaymentId ?? '';
  bool hasEmailPaymentId() => _emailPaymentId != null;

  // "email_payment_start" field.
  DateTime? _emailPaymentStart;
  DateTime? get emailPaymentStart => _emailPaymentStart;
  bool hasEmailPaymentStart() => _emailPaymentStart != null;

  // "email_payment_end" field.
  DateTime? _emailPaymentEnd;
  DateTime? get emailPaymentEnd => _emailPaymentEnd;
  bool hasEmailPaymentEnd() => _emailPaymentEnd != null;

  // "wa_payment_id" field.
  String? _waPaymentId;
  String get waPaymentId => _waPaymentId ?? '';
  bool hasWaPaymentId() => _waPaymentId != null;

  // "wa_payment_start" field.
  DateTime? _waPaymentStart;
  DateTime? get waPaymentStart => _waPaymentStart;
  bool hasWaPaymentStart() => _waPaymentStart != null;

  // "wa_payment_end" field.
  DateTime? _waPaymentEnd;
  DateTime? get waPaymentEnd => _waPaymentEnd;
  bool hasWaPaymentEnd() => _waPaymentEnd != null;

  // "call_payment_id" field.
  String? _callPaymentId;
  String get callPaymentId => _callPaymentId ?? '';
  bool hasCallPaymentId() => _callPaymentId != null;

  // "call_payment_start" field.
  DateTime? _callPaymentStart;
  DateTime? get callPaymentStart => _callPaymentStart;
  bool hasCallPaymentStart() => _callPaymentStart != null;

  // "call_payment_end" field.
  DateTime? _callPaymentEnd;
  DateTime? get callPaymentEnd => _callPaymentEnd;
  bool hasCallPaymentEnd() => _callPaymentEnd != null;

  void _initializeFields() {
    _emailPaymentId = snapshotData['email_payment_id'] as String?;
    _emailPaymentStart = snapshotData['email_payment_start'] as DateTime?;
    _emailPaymentEnd = snapshotData['email_payment_end'] as DateTime?;
    _waPaymentId = snapshotData['wa_payment_id'] as String?;
    _waPaymentStart = snapshotData['wa_payment_start'] as DateTime?;
    _waPaymentEnd = snapshotData['wa_payment_end'] as DateTime?;
    _callPaymentId = snapshotData['call_payment_id'] as String?;
    _callPaymentStart = snapshotData['call_payment_start'] as DateTime?;
    _callPaymentEnd = snapshotData['call_payment_end'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('strip_payment');

  static Stream<StripPaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StripPaymentRecord.fromSnapshot(s));

  static Future<StripPaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StripPaymentRecord.fromSnapshot(s));

  static StripPaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StripPaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StripPaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StripPaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StripPaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StripPaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStripPaymentRecordData({
  String? emailPaymentId,
  DateTime? emailPaymentStart,
  DateTime? emailPaymentEnd,
  String? waPaymentId,
  DateTime? waPaymentStart,
  DateTime? waPaymentEnd,
  String? callPaymentId,
  DateTime? callPaymentStart,
  DateTime? callPaymentEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email_payment_id': emailPaymentId,
      'email_payment_start': emailPaymentStart,
      'email_payment_end': emailPaymentEnd,
      'wa_payment_id': waPaymentId,
      'wa_payment_start': waPaymentStart,
      'wa_payment_end': waPaymentEnd,
      'call_payment_id': callPaymentId,
      'call_payment_start': callPaymentStart,
      'call_payment_end': callPaymentEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class StripPaymentRecordDocumentEquality
    implements Equality<StripPaymentRecord> {
  const StripPaymentRecordDocumentEquality();

  @override
  bool equals(StripPaymentRecord? e1, StripPaymentRecord? e2) {
    return e1?.emailPaymentId == e2?.emailPaymentId &&
        e1?.emailPaymentStart == e2?.emailPaymentStart &&
        e1?.emailPaymentEnd == e2?.emailPaymentEnd &&
        e1?.waPaymentId == e2?.waPaymentId &&
        e1?.waPaymentStart == e2?.waPaymentStart &&
        e1?.waPaymentEnd == e2?.waPaymentEnd &&
        e1?.callPaymentId == e2?.callPaymentId &&
        e1?.callPaymentStart == e2?.callPaymentStart &&
        e1?.callPaymentEnd == e2?.callPaymentEnd;
  }

  @override
  int hash(StripPaymentRecord? e) => const ListEquality().hash([
        e?.emailPaymentId,
        e?.emailPaymentStart,
        e?.emailPaymentEnd,
        e?.waPaymentId,
        e?.waPaymentStart,
        e?.waPaymentEnd,
        e?.callPaymentId,
        e?.callPaymentStart,
        e?.callPaymentEnd
      ]);

  @override
  bool isValidKey(Object? o) => o is StripPaymentRecord;
}
