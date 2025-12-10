import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromocionesRecord extends FirestoreRecord {
  PromocionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  String? _precio;
  String get precio => _precio ?? '';
  bool hasPrecio() => _precio != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _precio = snapshotData['precio'] as String?;
    _fecha = snapshotData['fecha'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promociones');

  static Stream<PromocionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromocionesRecord.fromSnapshot(s));

  static Future<PromocionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromocionesRecord.fromSnapshot(s));

  static PromocionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromocionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromocionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromocionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromocionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromocionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromocionesRecordData({
  String? imagen,
  String? nombre,
  String? precio,
  String? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
      'nombre': nombre,
      'precio': precio,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromocionesRecordDocumentEquality implements Equality<PromocionesRecord> {
  const PromocionesRecordDocumentEquality();

  @override
  bool equals(PromocionesRecord? e1, PromocionesRecord? e2) {
    return e1?.imagen == e2?.imagen &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(PromocionesRecord? e) =>
      const ListEquality().hash([e?.imagen, e?.nombre, e?.precio, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is PromocionesRecord;
}
