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
import 'package:path_provider/path_provider.dart';

// THE ABOVE IMPORTS WILL BE ADDED AUTOMATICALLY. DO NOT INCLUDE THESE IN CODE EDITOR.

Future shareQRcode(String qrcode) async {
  var base64String = qrcode.replaceFirst(RegExp('data:image/png;base64,'), '');
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/qr_code.png');
  var decoded = base64Decode(base64String);
  await file.writeAsBytes(decoded);
  Share.shareFiles([file.path], text: 'QR Code');
}
