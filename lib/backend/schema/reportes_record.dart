import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Reporte" field.
  String? _reporte;
  String get reporte => _reporte ?? '';
  bool hasReporte() => _reporte != null;

  void _initializeFields() {
    _reporte = snapshotData['Reporte'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportesRecordData({
  String? reporte,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Reporte': reporte,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportesRecordDocumentEquality implements Equality<ReportesRecord> {
  const ReportesRecordDocumentEquality();

  @override
  bool equals(ReportesRecord? e1, ReportesRecord? e2) {
    return e1?.reporte == e2?.reporte;
  }

  @override
  int hash(ReportesRecord? e) => const ListEquality().hash([e?.reporte]);

  @override
  bool isValidKey(Object? o) => o is ReportesRecord;
}
