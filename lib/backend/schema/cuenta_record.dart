import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuentaRecord extends FirestoreRecord {
  CuentaRecord._(
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

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _imagen = snapshotData['imagen'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _precio = snapshotData['precio'] as String?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cuenta');

  static Stream<CuentaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuentaRecord.fromSnapshot(s));

  static Future<CuentaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuentaRecord.fromSnapshot(s));

  static CuentaRecord fromSnapshot(DocumentSnapshot snapshot) => CuentaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuentaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuentaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuentaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuentaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuentaRecordData({
  String? imagen,
  String? nombre,
  String? precio,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagen': imagen,
      'nombre': nombre,
      'precio': precio,
      'Cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuentaRecordDocumentEquality implements Equality<CuentaRecord> {
  const CuentaRecordDocumentEquality();

  @override
  bool equals(CuentaRecord? e1, CuentaRecord? e2) {
    return e1?.imagen == e2?.imagen &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(CuentaRecord? e) =>
      const ListEquality().hash([e?.imagen, e?.nombre, e?.precio, e?.cantidad]);

  @override
  bool isValidKey(Object? o) => o is CuentaRecord;
}
