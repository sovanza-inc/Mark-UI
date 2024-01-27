import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WaServiceRecord extends FirestoreRecord {
  WaServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "waContainerId" field.
  String? _waContainerId;
  String get waContainerId => _waContainerId ?? '';
  bool hasWaContainerId() => _waContainerId != null;

  // "waContainerCreationDate" field.
  DateTime? _waContainerCreationDate;
  DateTime? get waContainerCreationDate => _waContainerCreationDate;
  bool hasWaContainerCreationDate() => _waContainerCreationDate != null;

  // "waServiceId" field.
  String? _waServiceId;
  String get waServiceId => _waServiceId ?? '';
  bool hasWaServiceId() => _waServiceId != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _waContainerId = snapshotData['waContainerId'] as String?;
    _waContainerCreationDate =
        snapshotData['waContainerCreationDate'] as DateTime?;
    _waServiceId = snapshotData['waServiceId'] as String?;
    _url = snapshotData['url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wa-service')
          : FirebaseFirestore.instance.collectionGroup('wa-service');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wa-service').doc(id);

  static Stream<WaServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WaServiceRecord.fromSnapshot(s));

  static Future<WaServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WaServiceRecord.fromSnapshot(s));

  static WaServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WaServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WaServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WaServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WaServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WaServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWaServiceRecordData({
  String? waContainerId,
  DateTime? waContainerCreationDate,
  String? waServiceId,
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'waContainerId': waContainerId,
      'waContainerCreationDate': waContainerCreationDate,
      'waServiceId': waServiceId,
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class WaServiceRecordDocumentEquality implements Equality<WaServiceRecord> {
  const WaServiceRecordDocumentEquality();

  @override
  bool equals(WaServiceRecord? e1, WaServiceRecord? e2) {
    return e1?.waContainerId == e2?.waContainerId &&
        e1?.waContainerCreationDate == e2?.waContainerCreationDate &&
        e1?.waServiceId == e2?.waServiceId &&
        e1?.url == e2?.url;
  }

  @override
  int hash(WaServiceRecord? e) => const ListEquality().hash(
      [e?.waContainerId, e?.waContainerCreationDate, e?.waServiceId, e?.url]);

  @override
  bool isValidKey(Object? o) => o is WaServiceRecord;
}
