import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "barberoNombre" field.
  String? _barberoNombre;
  String get barberoNombre => _barberoNombre ?? '';
  bool hasBarberoNombre() => _barberoNombre != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "fechaHora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "servicioId" field.
  String? _servicioId;
  String get servicioId => _servicioId ?? '';
  bool hasServicioId() => _servicioId != null;

  // "servicioNombre" field.
  String? _servicioNombre;
  String get servicioNombre => _servicioNombre ?? '';
  bool hasServicioNombre() => _servicioNombre != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _barberoNombre = snapshotData['barberoNombre'] as String?;
    _estado = snapshotData['estado'] as String?;
    _fechaHora = snapshotData['fechaHora'] as DateTime?;
    _servicioId = snapshotData['servicioId'] as String?;
    _servicioNombre = snapshotData['servicioNombre'] as String?;
    _uid = snapshotData['uid'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  String? barberoNombre,
  String? estado,
  DateTime? fechaHora,
  String? servicioId,
  String? servicioNombre,
  String? uid,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'barberoNombre': barberoNombre,
      'estado': estado,
      'fechaHora': fechaHora,
      'servicioId': servicioId,
      'servicioNombre': servicioNombre,
      'uid': uid,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.barberoNombre == e2?.barberoNombre &&
        e1?.estado == e2?.estado &&
        e1?.fechaHora == e2?.fechaHora &&
        e1?.servicioId == e2?.servicioId &&
        e1?.servicioNombre == e2?.servicioNombre &&
        e1?.uid == e2?.uid &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.barberoNombre,
        e?.estado,
        e?.fechaHora,
        e?.servicioId,
        e?.servicioNombre,
        e?.uid,
        e?.precio
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
