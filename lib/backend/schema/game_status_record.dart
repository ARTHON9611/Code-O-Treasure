import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GameStatusRecord extends FirestoreRecord {
  GameStatusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "isGameRunning" field.
  bool? _isGameRunning;
  bool get isGameRunning => _isGameRunning ?? false;
  bool hasIsGameRunning() => _isGameRunning != null;

  // "isGameEnded" field.
  bool? _isGameEnded;
  bool get isGameEnded => _isGameEnded ?? false;
  bool hasIsGameEnded() => _isGameEnded != null;

  void _initializeFields() {
    _isGameRunning = snapshotData['isGameRunning'] as bool?;
    _isGameEnded = snapshotData['isGameEnded'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gameStatus');

  static Stream<GameStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameStatusRecord.fromSnapshot(s));

  static Future<GameStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameStatusRecord.fromSnapshot(s));

  static GameStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameStatusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameStatusRecordData({
  bool? isGameRunning,
  bool? isGameEnded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isGameRunning': isGameRunning,
      'isGameEnded': isGameEnded,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameStatusRecordDocumentEquality implements Equality<GameStatusRecord> {
  const GameStatusRecordDocumentEquality();

  @override
  bool equals(GameStatusRecord? e1, GameStatusRecord? e2) {
    return e1?.isGameRunning == e2?.isGameRunning &&
        e1?.isGameEnded == e2?.isGameEnded;
  }

  @override
  int hash(GameStatusRecord? e) =>
      const ListEquality().hash([e?.isGameRunning, e?.isGameEnded]);

  @override
  bool isValidKey(Object? o) => o is GameStatusRecord;
}
