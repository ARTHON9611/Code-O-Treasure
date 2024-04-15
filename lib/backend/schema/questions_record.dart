import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ans" field.
  int? _ans;
  int get ans => _ans ?? 0;
  bool hasAns() => _ans != null;

  // "quesID" field.
  int? _quesID;
  int get quesID => _quesID ?? 0;
  bool hasQuesID() => _quesID != null;

  // "clueID" field.
  int? _clueID;
  int get clueID => _clueID ?? 0;
  bool hasClueID() => _clueID != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "clue" field.
  String? _clue;
  String get clue => _clue ?? '';
  bool hasClue() => _clue != null;

  void _initializeFields() {
    _ans = castToType<int>(snapshotData['ans']);
    _quesID = castToType<int>(snapshotData['quesID']);
    _clueID = castToType<int>(snapshotData['clueID']);
    _location = snapshotData['location'] as String?;
    _image = snapshotData['image'] as String?;
    _clue = snapshotData['clue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  int? ans,
  int? quesID,
  int? clueID,
  String? location,
  String? image,
  String? clue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ans': ans,
      'quesID': quesID,
      'clueID': clueID,
      'location': location,
      'image': image,
      'clue': clue,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    return e1?.ans == e2?.ans &&
        e1?.quesID == e2?.quesID &&
        e1?.clueID == e2?.clueID &&
        e1?.location == e2?.location &&
        e1?.image == e2?.image &&
        e1?.clue == e2?.clue;
  }

  @override
  int hash(QuestionsRecord? e) => const ListEquality()
      .hash([e?.ans, e?.quesID, e?.clueID, e?.location, e?.image, e?.clue]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
