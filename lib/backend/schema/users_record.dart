import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "container_ref" field.
  DocumentReference? _containerRef;
  DocumentReference? get containerRef => _containerRef;
  bool hasContainerRef() => _containerRef != null;

  // "container_id" field.
  String? _containerId;
  String get containerId => _containerId ?? '';
  bool hasContainerId() => _containerId != null;

  // "waSmsStripPaymentId" field.
  String? _waSmsStripPaymentId;
  String get waSmsStripPaymentId => _waSmsStripPaymentId ?? '';
  bool hasWaSmsStripPaymentId() => _waSmsStripPaymentId != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "callStripPaymentId" field.
  String? _callStripPaymentId;
  String get callStripPaymentId => _callStripPaymentId ?? '';
  bool hasCallStripPaymentId() => _callStripPaymentId != null;

  // "stripe_payment_ref" field.
  DocumentReference? _stripePaymentRef;
  DocumentReference? get stripePaymentRef => _stripePaymentRef;
  bool hasStripePaymentRef() => _stripePaymentRef != null;

  // "stripe_payment_id" field.
  String? _stripePaymentId;
  String get stripePaymentId => _stripePaymentId ?? '';
  bool hasStripePaymentId() => _stripePaymentId != null;

  // "twilio_account_id" field.
  String? _twilioAccountId;
  String get twilioAccountId => _twilioAccountId ?? '';
  bool hasTwilioAccountId() => _twilioAccountId != null;

  // "twilio_account_ref" field.
  DocumentReference? _twilioAccountRef;
  DocumentReference? get twilioAccountRef => _twilioAccountRef;
  bool hasTwilioAccountRef() => _twilioAccountRef != null;

  // "emailStripePaymentId" field.
  String? _emailStripePaymentId;
  String get emailStripePaymentId => _emailStripePaymentId ?? '';
  bool hasEmailStripePaymentId() => _emailStripePaymentId != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  bool hasPrompt() => _prompt != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _containerRef = snapshotData['container_ref'] as DocumentReference?;
    _containerId = snapshotData['container_id'] as String?;
    _waSmsStripPaymentId = snapshotData['waSmsStripPaymentId'] as String?;
    _address = snapshotData['address'] as String?;
    _website = snapshotData['website'] as String?;
    _callStripPaymentId = snapshotData['callStripPaymentId'] as String?;
    _stripePaymentRef =
        snapshotData['stripe_payment_ref'] as DocumentReference?;
    _stripePaymentId = snapshotData['stripe_payment_id'] as String?;
    _twilioAccountId = snapshotData['twilio_account_id'] as String?;
    _twilioAccountRef =
        snapshotData['twilio_account_ref'] as DocumentReference?;
    _emailStripePaymentId = snapshotData['emailStripePaymentId'] as String?;
    _prompt = snapshotData['prompt'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? containerRef,
  String? containerId,
  String? waSmsStripPaymentId,
  String? address,
  String? website,
  String? callStripPaymentId,
  DocumentReference? stripePaymentRef,
  String? stripePaymentId,
  String? twilioAccountId,
  DocumentReference? twilioAccountRef,
  String? emailStripePaymentId,
  String? prompt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'container_ref': containerRef,
      'container_id': containerId,
      'waSmsStripPaymentId': waSmsStripPaymentId,
      'address': address,
      'website': website,
      'callStripPaymentId': callStripPaymentId,
      'stripe_payment_ref': stripePaymentRef,
      'stripe_payment_id': stripePaymentId,
      'twilio_account_id': twilioAccountId,
      'twilio_account_ref': twilioAccountRef,
      'emailStripePaymentId': emailStripePaymentId,
      'prompt': prompt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.containerRef == e2?.containerRef &&
        e1?.containerId == e2?.containerId &&
        e1?.waSmsStripPaymentId == e2?.waSmsStripPaymentId &&
        e1?.address == e2?.address &&
        e1?.website == e2?.website &&
        e1?.callStripPaymentId == e2?.callStripPaymentId &&
        e1?.stripePaymentRef == e2?.stripePaymentRef &&
        e1?.stripePaymentId == e2?.stripePaymentId &&
        e1?.twilioAccountId == e2?.twilioAccountId &&
        e1?.twilioAccountRef == e2?.twilioAccountRef &&
        e1?.emailStripePaymentId == e2?.emailStripePaymentId &&
        e1?.prompt == e2?.prompt;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.containerRef,
        e?.containerId,
        e?.waSmsStripPaymentId,
        e?.address,
        e?.website,
        e?.callStripPaymentId,
        e?.stripePaymentRef,
        e?.stripePaymentId,
        e?.twilioAccountId,
        e?.twilioAccountRef,
        e?.emailStripePaymentId,
        e?.prompt
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
