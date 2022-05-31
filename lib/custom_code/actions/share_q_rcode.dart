// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// import '../../flutter_flow/flutter_flow_theme.dart';
// import '../../flutter_flow/flutter_flow_util.dart';
// import 'index.dart'; // Imports other custom widgets
// import '../actions/index.dart'; // Imports custom actions
// import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'dart:convert';
import 'dart:io';
import 'package:share_plus/share_plus.dart';

// THE ABOVE IMPORTS WILL BE ADDED AUTOMATICALLY. DO NOT INCLUDE THESE IN CODE EDITOR.

Future shareQRcode(String qrcode) async {
  var base64String = qrcode.replaceFirst(RegExp('data:image/png;base64,'), '');
  File imgFile = File('assets/images/qr_code.png');
  imgFile.writeAsBytesSync(base64Decode(base64String));
  Share.shareFiles(['assets/images/qr_code.png'], text: 'QR Code');
}
