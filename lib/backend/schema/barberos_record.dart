import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarberosRecord extends FirestoreRecord {
  BarberosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "bid" field.
  String? _bid;
  String get bid => _bid ?? '';
  bool hasBid() => _bid != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "primerApellido" field.
  String? _primerApellido;
  String get primerApellido => _primerApellido ?? '';
  bool hasPrimerApellido() => _primerApellido != null;

  // "segundoApellido" field.
  String? _segundoApellido;
  String get segundoApellido => _segundoApellido ?? '';
  bool hasSegundoApellido() => _segundoApellido != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "especialidades" field.
  String? _especialidades;
  String get especialidades => _especialidades ?? '';
  bool hasEspecialidades() => _especialidades != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  void _initializeFields() {
    _bid = snapshotData['bid'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _primerApellido = snapshotData['primerApellido'] as String?;
    _segundoApellido = snapshotData['segundoApellido'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _especialidades = snapshotData['especialidades'] as String?;
    _activo = snapshotData['activo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('barberos');

  static Stream<BarberosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BarberosRecord.fromSnapshot(s));

  static Future<BarberosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BarberosRecord.fromSnapshot(s));

  static BarberosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BarberosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BarberosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BarberosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BarberosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BarberosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBarberosRecordData({
  String? bid,
  String? nombre,
  String? primerApellido,
  String? segundoApellido,
  String? photoUrl,
  double? rating,
  String? especialidades,
  bool? activo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bid': bid,
      'nombre': nombre,
      'primerApellido': primerApellido,
      'segundoApellido': segundoApellido,
      'photo_url': photoUrl,
      'rating': rating,
      'especialidades': especialidades,
      'activo': activo,
    }.withoutNulls,
  );

  return firestoreData;
}

class BarberosRecordDocumentEquality implements Equality<BarberosRecord> {
  const BarberosRecordDocumentEquality();

  @override
  bool equals(BarberosRecord? e1, BarberosRecord? e2) {
    return e1?.bid == e2?.bid &&
        e1?.nombre == e2?.nombre &&
        e1?.primerApellido == e2?.primerApellido &&
        e1?.segundoApellido == e2?.segundoApellido &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.rating == e2?.rating &&
        e1?.especialidades == e2?.especialidades &&
        e1?.activo == e2?.activo;
  }

  @override
  int hash(BarberosRecord? e) => const ListEquality().hash([
        e?.bid,
        e?.nombre,
        e?.primerApellido,
        e?.segundoApellido,
        e?.photoUrl,
        e?.rating,
        e?.especialidades,
        e?.activo
      ]);

  @override
  bool isValidKey(Object? o) => o is BarberosRecord;
}
