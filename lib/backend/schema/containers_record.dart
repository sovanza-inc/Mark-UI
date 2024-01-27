import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContainersRecord extends FirestoreRecord {
  ContainersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('containers');

  static Stream<ContainersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContainersRecord.fromSnapshot(s));

  static Future<ContainersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContainersRecord.fromSnapshot(s));

  static ContainersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContainersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContainersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContainersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContainersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContainersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContainersRecordData({
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContainersRecordDocumentEquality implements Equality<ContainersRecord> {
  const ContainersRecordDocumentEquality();

  @override
  bool equals(ContainersRecord? e1, ContainersRecord? e2) {
    return e1?.uid == e2?.uid;
  }

  @override
  int hash(ContainersRecord? e) => const ListEquality().hash([e?.uid]);

  @override
  bool isValidKey(Object? o) => o is ContainersRecord;
}
