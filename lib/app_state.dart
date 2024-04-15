import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
      _isQuesSubmit = prefs.getBool('ff_isQuesSubmit') ?? _isQuesSubmit;
    });
    _safeInit(() {
      _roundCounter = prefs.getInt('ff_roundCounter') ?? _roundCounter;
    });
    _safeInit(() {
      _isQrActive = prefs.getBool('ff_isQrActive') ?? _isQrActive;
    });
    _safeInit(() {
      _isClueVisible = prefs.getBool('ff_isClueVisible') ?? _isClueVisible;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_qrScanOutput')) {
        try {
          _qrScanOutput = jsonDecode(prefs.getString('ff_qrScanOutput') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _isKey1Visible = prefs.getBool('ff_isKey1Visible') ?? _isKey1Visible;
    });
    _safeInit(() {
      _isKey2Visible = prefs.getBool('ff_isKey2Visible') ?? _isKey2Visible;
    });
    _safeInit(() {
      _submitedAnswer = prefs.getInt('ff_submitedAnswer') ?? _submitedAnswer;
    });
    _safeInit(() {
      _currentQuesId = prefs.getInt('ff_currentQuesId') ?? _currentQuesId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isMusic = true;
  bool get isMusic => _isMusic;
  set isMusic(bool value) {
    _isMusic = value;
  }

  bool _isVideo = true;
  bool get isVideo => _isVideo;
  set isVideo(bool value) {
    _isVideo = value;
  }

  bool _isQuesSubmit = false;
  bool get isQuesSubmit => _isQuesSubmit;
  set isQuesSubmit(bool value) {
    _isQuesSubmit = value;
    prefs.setBool('ff_isQuesSubmit', value);
  }

  int _roundCounter = 1;
  int get roundCounter => _roundCounter;
  set roundCounter(int value) {
    _roundCounter = value;
    prefs.setInt('ff_roundCounter', value);
  }

  bool _isQrActive = false;
  bool get isQrActive => _isQrActive;
  set isQrActive(bool value) {
    _isQrActive = value;
    prefs.setBool('ff_isQrActive', value);
  }

  bool _isClueVisible = false;
  bool get isClueVisible => _isClueVisible;
  set isClueVisible(bool value) {
    _isClueVisible = value;
    prefs.setBool('ff_isClueVisible', value);
  }

  String _qrLocation = '';
  String get qrLocation => _qrLocation;
  set qrLocation(String value) {
    _qrLocation = value;
  }

  String _ansLocation = '';
  String get ansLocation => _ansLocation;
  set ansLocation(String value) {
    _ansLocation = value;
  }

  dynamic _qrScanOutput;
  dynamic get qrScanOutput => _qrScanOutput;
  set qrScanOutput(dynamic value) {
    _qrScanOutput = value;
    prefs.setString('ff_qrScanOutput', jsonEncode(value));
  }

  bool _isKey1Visible = false;
  bool get isKey1Visible => _isKey1Visible;
  set isKey1Visible(bool value) {
    _isKey1Visible = value;
    prefs.setBool('ff_isKey1Visible', value);
  }

  bool _isKey2Visible = false;
  bool get isKey2Visible => _isKey2Visible;
  set isKey2Visible(bool value) {
    _isKey2Visible = value;
    prefs.setBool('ff_isKey2Visible', value);
  }

  int _submitedAnswer = 0;
  int get submitedAnswer => _submitedAnswer;
  set submitedAnswer(int value) {
    _submitedAnswer = value;
    prefs.setInt('ff_submitedAnswer', value);
  }

  int _currentQuesId = 0;
  int get currentQuesId => _currentQuesId;
  set currentQuesId(int value) {
    _currentQuesId = value;
    prefs.setInt('ff_currentQuesId', value);
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
