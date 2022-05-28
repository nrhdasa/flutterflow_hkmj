import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _authtoken = prefs.getString('ff_authtoken') ?? _authtoken;
    _username = prefs.getString('ff_username') ?? _username;
    _useremail = prefs.getString('ff_useremail') ?? _useremail;
  }

  SharedPreferences prefs;

  String _authtoken = '';
  String get authtoken => _authtoken;
  set authtoken(String _value) {
    _authtoken = _value;
    prefs.setString('ff_authtoken', _value);
  }

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    prefs.setString('ff_username', _value);
  }

  String _useremail = '';
  String get useremail => _useremail;
  set useremail(String _value) {
    _useremail = _value;
    prefs.setString('ff_useremail', _value);
  }

  String searchdate = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
