import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _onboarding = prefs.getBool('ff_onboarding') ?? _onboarding;
    });
    _safeInit(() {
      _UpdatedText = prefs.getString('ff_UpdatedText') ?? _UpdatedText;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _onboarding = true;
  bool get onboarding => _onboarding;
  set onboarding(bool _value) {
    _onboarding = _value;
    prefs.setBool('ff_onboarding', _value);
  }

  String _UpdatedText = '';
  String get UpdatedText => _UpdatedText;
  set UpdatedText(String _value) {
    _UpdatedText = _value;
    prefs.setString('ff_UpdatedText', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
