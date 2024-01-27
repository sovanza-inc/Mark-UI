import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TwilioAccountRecord extends FirestoreRecord {
  TwilioAccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "account_sid" field.
  String? _accountSid;
  String get accountSid => _accountSid ?? '';
  bool hasAccountSid() => _accountSid != null;

  // "friendly_name" field.
  String? _friendlyName;
  String get friendlyName => _friendlyName ?? '';
  bool hasFriendlyName() => _friendlyName != null;

  // "auth_token" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  bool hasAuthToken() => _authToken != null;

  void _initializeFields() {
    _accountSid = snapshotData['account_sid'] as String?;
    _friendlyName = snapshotData['friendly_name'] as String?;
    _authToken = snapshotData['auth_token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('twilio_account');

  static Stream<TwilioAccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TwilioAccountRecord.fromSnapshot(s));

  static Future<TwilioAccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TwilioAccountRecord.fromSnapshot(s));

  static TwilioAccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TwilioAccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TwilioAccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TwilioAccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TwilioAccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TwilioAccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTwilioAccountRecordData({
  String? accountSid,
  String? friendlyName,
  String? authToken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account_sid': accountSid,
      'friendly_name': friendlyName,
      'auth_token': authToken,
    }.withoutNulls,
  );

  return firestoreData;
}

class TwilioAccountRecordDocumentEquality
    implements Equality<TwilioAccountRecord> {
  const TwilioAccountRecordDocumentEquality();

  @override
  bool equals(TwilioAccountRecord? e1, TwilioAccountRecord? e2) {
    return e1?.accountSid == e2?.accountSid &&
        e1?.friendlyName == e2?.friendlyName &&
        e1?.authToken == e2?.authToken;
  }

  @override
  int hash(TwilioAccountRecord? e) =>
      const ListEquality().hash([e?.accountSid, e?.friendlyName, e?.authToken]);

  @override
  bool isValidKey(Object? o) => o is TwilioAccountRecord;
}
