import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleRecord extends FirestoreRecord {
  ScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "transcribe" field.
  String? _transcribe;
  String get transcribe => _transcribe ?? '';
  bool hasTranscribe() => _transcribe != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _number = snapshotData['number'] as String?;
    _audio = snapshotData['audio'] as String?;
    _transcribe = snapshotData['transcribe'] as String?;
    _status = snapshotData['status'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('schedule')
          : FirebaseFirestore.instance.collectionGroup('schedule');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('schedule').doc(id);

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleRecord.fromSnapshot(s));

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleRecord.fromSnapshot(s));

  static ScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScheduleRecordData({
  String? number,
  String? audio,
  String? transcribe,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'number': number,
      'audio': audio,
      'transcribe': transcribe,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleRecordDocumentEquality implements Equality<ScheduleRecord> {
  const ScheduleRecordDocumentEquality();

  @override
  bool equals(ScheduleRecord? e1, ScheduleRecord? e2) {
    return e1?.number == e2?.number &&
        e1?.audio == e2?.audio &&
        e1?.transcribe == e2?.transcribe &&
        e1?.status == e2?.status;
  }

  @override
  int hash(ScheduleRecord? e) => const ListEquality()
      .hash([e?.number, e?.audio, e?.transcribe, e?.status]);

  @override
  bool isValidKey(Object? o) => o is ScheduleRecord;
}
