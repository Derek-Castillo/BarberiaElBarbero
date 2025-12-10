// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// crear un codigo que agregue un barbero a la coleccion de barberos
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> crearBarbero(
  String nombre,
  String primerApellido,
  String segundoApellido,
  double rating,
  String especialidades,
) async {
  try {
    // Validar que los campos requeridos no estén vacíos
    if (nombre.trim().isEmpty || primerApellido.trim().isEmpty) {
      return 'Error: El nombre y primer apellido son requeridos';
    }

    // Validar que el rating esté en un rango válido
    if (rating < 0 || rating > 5) {
      return 'Error: El rating debe estar entre 0 y 5';
    }

    // Crear el documento del barbero
    Map<String, dynamic> barberoData = {
      'nombre': nombre.trim(),
      'primerApellido': primerApellido.trim(),
      'segundoApellido': segundoApellido.trim(),
      'rating': rating,
      'especialidades': especialidades.trim(),
      'fechaCreacion': FieldValue.serverTimestamp(),
      'activo': true,
    };

    // Agregar el barbero a la colección de Firestore
    DocumentReference docRef = await FirebaseFirestore.instance
        .collection('barberos')
        .add(barberoData);

    // Retornar el ID del documento creado
    return docRef.id;
  } catch (e) {
    // Manejar errores
    return 'Error al crear barbero: ${e.toString()}';
  }
}
