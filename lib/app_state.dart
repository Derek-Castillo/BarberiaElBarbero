import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedBarberoNombre =
          prefs.getString('ff_selectedBarberoNombre') ?? _selectedBarberoNombre;
    });
    _safeInit(() {
      _selectedServicioNombre = prefs.getString('ff_selectedServicioNombre') ??
          _selectedServicioNombre;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _selectedBarberoNombre = '';
  String get selectedBarberoNombre => _selectedBarberoNombre;
  set selectedBarberoNombre(String value) {
    _selectedBarberoNombre = value;
    prefs.setString('ff_selectedBarberoNombre', value);
  }

  String _selectedServicioNombre = '';
  String get selectedServicioNombre => _selectedServicioNombre;
  set selectedServicioNombre(String value) {
    _selectedServicioNombre = value;
    prefs.setString('ff_selectedServicioNombre', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
