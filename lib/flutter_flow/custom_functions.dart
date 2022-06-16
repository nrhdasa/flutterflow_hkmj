import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../../auth/auth_util.dart';

bool isCredentialsCorrect(int successkey) {
  if (successkey == 1) {
    return true;
  }
  return false;
}

String getTodayDate() {
  // get today date
  final now = DateTime.now();
  final format = DateFormat('yyyy-MM-dd');
  return format.format(now);
}

String setDate(DateTime datePicked) {
  // Add your function code here!
  print("Date is     .....  ${datePicked}");
  datePicked = datePicked ?? DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(datePicked);
  return formatted;
}

double getProgressIndicatorValueUsed(
  String slot,
  dynamic dashboardData,
) {
  return (dashboardData['message'][slot]['used'] /
      dashboardData['message'][slot]['generated']);
}

double getProgressIndicatorGenerated(
  String slot,
  dynamic dashboardData,
) {
  return (dashboardData['message'][slot]['generated'] /
      dashboardData['message'][slot]['credit']);
}

String getException(String exception) {
  String result =
      exception.substring(exception.indexOf(':') + 1, exception.length);
  String replaced = result
      .replaceAll(RegExp('<b>'), '')
      .replaceAll(RegExp('</b>'), '')
      .replaceAll(RegExp('<br>'), '');
  return replaced;
}

String getDateinFormat(
  String date,
  String format,
) {
  //$.creation
  DateTime dateformatted = DateTime.parse(date);
  dateformatted = dateformatted ?? DateTime.now();
  final DateFormat formatter = DateFormat(format);
  final String formatted = formatter.format(dateformatted);
  return formatted;
}

bool isCouponUsed(int used) {
  if (used == 1) {
    return true;
  }
  return false;
}

bool checkCouponType(
  String coupontype,
  String datareceived,
) {
  if (coupontype == datareceived) {
    return true;
  }
  return false;
  // Add your function code here!
}
