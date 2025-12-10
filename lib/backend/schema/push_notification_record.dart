import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PushNotificationRecord extends FirestoreRecord {
  PushNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Notificacion" field.
  String? _notificacion;
  String get notificacion => _notificacion ?? '';
  bool hasNotificacion() => _notificacion != null;

  void _initializeFields() {
    _notificacion = snapshotData['Notificacion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pushNotification');

  static Stream<PushNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PushNotificationRecord.fromSnapshot(s));

  static Future<PushNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PushNotificationRecord.fromSnapshot(s));

  static PushNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PushNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PushNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PushNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PushNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PushNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPushNotificationRecordData({
  String? notificacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Notificacion': notificacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class PushNotificationRecordDocumentEquality
    implements Equality<PushNotificationRecord> {
  const PushNotificationRecordDocumentEquality();

  @override
  bool equals(PushNotificationRecord? e1, PushNotificationRecord? e2) {
    return e1?.notificacion == e2?.notificacion;
  }

  @override
  int hash(PushNotificationRecord? e) =>
      const ListEquality().hash([e?.notificacion]);

  @override
  bool isValidKey(Object? o) => o is PushNotificationRecord;
}
