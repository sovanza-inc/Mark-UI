import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailServiceRecord extends FirestoreRecord {
  EmailServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "container_id" field.
  String? _containerId;
  String get containerId => _containerId ?? '';
  bool hasContainerId() => _containerId != null;

  // "container_created_data" field.
  DateTime? _containerCreatedData;
  DateTime? get containerCreatedData => _containerCreatedData;
  bool hasContainerCreatedData() => _containerCreatedData != null;

  // "container_status" field.
  String? _containerStatus;
  String get containerStatus => _containerStatus ?? '';
  bool hasContainerStatus() => _containerStatus != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _containerId = snapshotData['container_id'] as String?;
    _containerCreatedData = snapshotData['container_created_data'] as DateTime?;
    _containerStatus = snapshotData['container_status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('email_service')
          : FirebaseFirestore.instance.collectionGroup('email_service');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('email_service').doc(id);

  static Stream<EmailServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmailServiceRecord.fromSnapshot(s));

  static Future<EmailServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmailServiceRecord.fromSnapshot(s));

  static EmailServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmailServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmailServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmailServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmailServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmailServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmailServiceRecordData({
  String? containerId,
  DateTime? containerCreatedData,
  String? containerStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'container_id': containerId,
      'container_created_data': containerCreatedData,
      'container_status': containerStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmailServiceRecordDocumentEquality
    implements Equality<EmailServiceRecord> {
  const EmailServiceRecordDocumentEquality();

  @override
  bool equals(EmailServiceRecord? e1, EmailServiceRecord? e2) {
    return e1?.containerId == e2?.containerId &&
        e1?.containerCreatedData == e2?.containerCreatedData &&
        e1?.containerStatus == e2?.containerStatus;
  }

  @override
  int hash(EmailServiceRecord? e) => const ListEquality()
      .hash([e?.containerId, e?.containerCreatedData, e?.containerStatus]);

  @override
  bool isValidKey(Object? o) => o is EmailServiceRecord;
}
