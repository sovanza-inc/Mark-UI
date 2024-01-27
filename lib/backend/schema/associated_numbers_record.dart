import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssociatedNumbersRecord extends FirestoreRecord {
  AssociatedNumbersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "purchased_number" field.
  String? _purchasedNumber;
  String get purchasedNumber => _purchasedNumber ?? '';
  bool hasPurchasedNumber() => _purchasedNumber != null;

  // "isVoice" field.
  bool? _isVoice;
  bool get isVoice => _isVoice ?? false;
  bool hasIsVoice() => _isVoice != null;

  // "isSms" field.
  bool? _isSms;
  bool get isSms => _isSms ?? false;
  bool hasIsSms() => _isSms != null;

  // "isMms" field.
  bool? _isMms;
  bool get isMms => _isMms ?? false;
  bool hasIsMms() => _isMms != null;

  // "number_sid" field.
  String? _numberSid;
  String get numberSid => _numberSid ?? '';
  bool hasNumberSid() => _numberSid != null;

  // "number_type" field.
  String? _numberType;
  String get numberType => _numberType ?? '';
  bool hasNumberType() => _numberType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _purchasedNumber = snapshotData['purchased_number'] as String?;
    _isVoice = snapshotData['isVoice'] as bool?;
    _isSms = snapshotData['isSms'] as bool?;
    _isMms = snapshotData['isMms'] as bool?;
    _numberSid = snapshotData['number_sid'] as String?;
    _numberType = snapshotData['number_type'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('associated_numbers')
          : FirebaseFirestore.instance.collectionGroup('associated_numbers');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('associated_numbers').doc(id);

  static Stream<AssociatedNumbersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssociatedNumbersRecord.fromSnapshot(s));

  static Future<AssociatedNumbersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AssociatedNumbersRecord.fromSnapshot(s));

  static AssociatedNumbersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssociatedNumbersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssociatedNumbersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssociatedNumbersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssociatedNumbersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssociatedNumbersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssociatedNumbersRecordData({
  String? purchasedNumber,
  bool? isVoice,
  bool? isSms,
  bool? isMms,
  String? numberSid,
  String? numberType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'purchased_number': purchasedNumber,
      'isVoice': isVoice,
      'isSms': isSms,
      'isMms': isMms,
      'number_sid': numberSid,
      'number_type': numberType,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssociatedNumbersRecordDocumentEquality
    implements Equality<AssociatedNumbersRecord> {
  const AssociatedNumbersRecordDocumentEquality();

  @override
  bool equals(AssociatedNumbersRecord? e1, AssociatedNumbersRecord? e2) {
    return e1?.purchasedNumber == e2?.purchasedNumber &&
        e1?.isVoice == e2?.isVoice &&
        e1?.isSms == e2?.isSms &&
        e1?.isMms == e2?.isMms &&
        e1?.numberSid == e2?.numberSid &&
        e1?.numberType == e2?.numberType;
  }

  @override
  int hash(AssociatedNumbersRecord? e) => const ListEquality().hash([
        e?.purchasedNumber,
        e?.isVoice,
        e?.isSms,
        e?.isMms,
        e?.numberSid,
        e?.numberType
      ]);

  @override
  bool isValidKey(Object? o) => o is AssociatedNumbersRecord;
}
