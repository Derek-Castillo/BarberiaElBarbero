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
      _selectedFechaHora = prefs.containsKey('ff_selectedFechaHora')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_selectedFechaHora')!)
          : _selectedFechaHora;
    });
    _safeInit(() {
      _selectedBarberoId =
          prefs.getString('ff_selectedBarberoId') ?? _selectedBarberoId;
    });
    _safeInit(() {
      _selectedBarberoNombre =
          prefs.getString('ff_selectedBarberoNombre') ?? _selectedBarberoNombre;
    });
    _safeInit(() {
      _selectedHora = prefs.getString('ff_selectedHora') ?? _selectedHora;
    });
    _safeInit(() {
      _selectedServicioNombre = prefs.getString('ff_selectedServicioNombre') ??
          _selectedServicioNombre;
    });
    _safeInit(() {
      _selectedServicioId =
          prefs.getString('ff_selectedServicioId') ?? _selectedServicioId;
    });
    _safeInit(() {
      _selectedPrecio = prefs.getString('ff_selectedPrecio') ?? _selectedPrecio;
    });
    _safeInit(() {
      _uidCliente = prefs.getString('ff_uidCliente') ?? _uidCliente;
    });
    _safeInit(() {
      _estadoCita = prefs.getString('ff_estadoCita') ?? _estadoCita;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _selectedFechaHora;
  DateTime? get selectedFechaHora => _selectedFechaHora;
  set selectedFechaHora(DateTime? value) {
    _selectedFechaHora = value;
    value != null
        ? prefs.setInt('ff_selectedFechaHora', value.millisecondsSinceEpoch)
        : prefs.remove('ff_selectedFechaHora');
  }

  String _selectedBarberoId = '';
  String get selectedBarberoId => _selectedBarberoId;
  set selectedBarberoId(String value) {
    _selectedBarberoId = value;
    prefs.setString('ff_selectedBarberoId', value);
  }

  String _selectedBarberoNombre = '';
  String get selectedBarberoNombre => _selectedBarberoNombre;
  set selectedBarberoNombre(String value) {
    _selectedBarberoNombre = value;
    prefs.setString('ff_selectedBarberoNombre', value);
  }

  String _selectedHora = '';
  String get selectedHora => _selectedHora;
  set selectedHora(String value) {
    _selectedHora = value;
    prefs.setString('ff_selectedHora', value);
  }

  String _selectedServicioNombre = '';
  String get selectedServicioNombre => _selectedServicioNombre;
  set selectedServicioNombre(String value) {
    _selectedServicioNombre = value;
    prefs.setString('ff_selectedServicioNombre', value);
  }

  String _selectedServicioId = '';
  String get selectedServicioId => _selectedServicioId;
  set selectedServicioId(String value) {
    _selectedServicioId = value;
    prefs.setString('ff_selectedServicioId', value);
  }

  String _selectedPrecio = '';
  String get selectedPrecio => _selectedPrecio;
  set selectedPrecio(String value) {
    _selectedPrecio = value;
    prefs.setString('ff_selectedPrecio', value);
  }

  String _uidCliente = '';
  String get uidCliente => _uidCliente;
  set uidCliente(String value) {
    _uidCliente = value;
    prefs.setString('ff_uidCliente', value);
  }

  String _estadoCita = '';
  String get estadoCita => _estadoCita;
  set estadoCita(String value) {
    _estadoCita = value;
    prefs.setString('ff_estadoCita', value);
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
