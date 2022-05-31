// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'dart:convert';

class QRImage extends StatefulWidget {
  const QRImage({
    Key key,
    this.width,
    this.height,
    this.qrcode,
  }) : super(key: key);

  final double width;
  final double height;
  final String qrcode;

  @override
  _QRImageState createState() => _QRImageState();
}

class _QRImageState extends State<QRImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        width: widget.width,
        child: imageFromBase64String(widget.qrcode));
  }

  Image imageFromBase64String(String base64String) {
    base64String =
        base64String.replaceFirst(RegExp('data:image/png;base64,'), '');
    return Image.memory(base64Decode(base64String));
  }
}
