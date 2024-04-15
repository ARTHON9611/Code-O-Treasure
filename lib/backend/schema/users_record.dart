import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
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

  // "isGameStarted" field.
  bool? _isGameStarted;
  bool get isGameStarted => _isGameStarted ?? false;
  bool hasIsGameStarted() => _isGameStarted != null;

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "TeamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  // "seenQuestions" field.
  List<int>? _seenQuestions;
  List<int> get seenQuestions => _seenQuestions ?? const [];
  bool hasSeenQuestions() => _seenQuestions != null;

  // "RoundNo" field.
  int? _roundNo;
  int get roundNo => _roundNo ?? 0;
  bool hasRoundNo() => _roundNo != null;

  // "keys" field.
  List<int>? _keys;
  List<int> get keys => _keys ?? const [];
  bool hasKeys() => _keys != null;

  // "RollNumber" field.
  String? _rollNumber;
  String get rollNumber => _rollNumber ?? '';
  bool hasRollNumber() => _rollNumber != null;

  // "key1" field.
  int? _key1;
  int get key1 => _key1 ?? 0;
  bool hasKey1() => _key1 != null;

  // "key2" field.
  int? _key2;
  int get key2 => _key2 ?? 0;
  bool hasKey2() => _key2 != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isGameStarted = snapshotData['isGameStarted'] as bool?;
    _points = castToType<int>(snapshotData['points']);
    _teamName = snapshotData['TeamName'] as String?;
    _seenQuestions = getDataList(snapshotData['seenQuestions']);
    _roundNo = castToType<int>(snapshotData['RoundNo']);
    _keys = getDataList(snapshotData['keys']);
    _rollNumber = snapshotData['RollNumber'] as String?;
    _key1 = castToType<int>(snapshotData['key1']);
    _key2 = castToType<int>(snapshotData['key2']);
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
  bool? isGameStarted,
  int? points,
  String? teamName,
  int? roundNo,
  String? rollNumber,
  int? key1,
  int? key2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isGameStarted': isGameStarted,
      'points': points,
      'TeamName': teamName,
      'RoundNo': roundNo,
      'RollNumber': rollNumber,
      'key1': key1,
      'key2': key2,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isGameStarted == e2?.isGameStarted &&
        e1?.points == e2?.points &&
        e1?.teamName == e2?.teamName &&
        listEquality.equals(e1?.seenQuestions, e2?.seenQuestions) &&
        e1?.roundNo == e2?.roundNo &&
        listEquality.equals(e1?.keys, e2?.keys) &&
        e1?.rollNumber == e2?.rollNumber &&
        e1?.key1 == e2?.key1 &&
        e1?.key2 == e2?.key2;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isGameStarted,
        e?.points,
        e?.teamName,
        e?.seenQuestions,
        e?.roundNo,
        e?.keys,
        e?.rollNumber,
        e?.key1,
        e?.key2
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
