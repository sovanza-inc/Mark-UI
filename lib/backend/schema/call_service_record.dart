import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CallServiceRecord extends FirestoreRecord {
  CallServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "callContainerId" field.
  String? _callContainerId;
  String get callContainerId => _callContainerId ?? '';
  bool hasCallContainerId() => _callContainerId != null;

  // "callContainerCreationDate" field.
  DateTime? _callContainerCreationDate;
  DateTime? get callContainerCreationDate => _callContainerCreationDate;
  bool hasCallContainerCreationDate() => _callContainerCreationDate != null;

  // "callServiceId" field.
  String? _callServiceId;
  String get callServiceId => _callServiceId ?? '';
  bool hasCallServiceId() => _callServiceId != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _callContainerId = snapshotData['callContainerId'] as String?;
    _callContainerCreationDate =
        snapshotData['callContainerCreationDate'] as DateTime?;
    _callServiceId = snapshotData['callServiceId'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('call-service')
          : FirebaseFirestore.instance.collectionGroup('call-service');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('call-service').doc(id);

  static Stream<CallServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CallServiceRecord.fromSnapshot(s));

  static Future<CallServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CallServiceRecord.fromSnapshot(s));

  static CallServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CallServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CallServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CallServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CallServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CallServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCallServiceRecordData({
  String? callContainerId,
  DateTime? callContainerCreationDate,
  String? callServiceId,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'callContainerId': callContainerId,
      'callContainerCreationDate': callContainerCreationDate,
      'callServiceId': callServiceId,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class CallServiceRecordDocumentEquality implements Equality<CallServiceRecord> {
  const CallServiceRecordDocumentEquality();

  @override
  bool equals(CallServiceRecord? e1, CallServiceRecord? e2) {
    return e1?.callContainerId == e2?.callContainerId &&
        e1?.callContainerCreationDate == e2?.callContainerCreationDate &&
        e1?.callServiceId == e2?.callServiceId &&
        e1?.url == e2?.url;
  }

  @override
  int hash(CallServiceRecord? e) => const ListEquality().hash([
        e?.callContainerId,
        e?.callContainerCreationDate,
        e?.callServiceId,
        e?.url
      ]);

  @override
  bool isValidKey(Object? o) => o is CallServiceRecord;
}
