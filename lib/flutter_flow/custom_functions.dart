import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

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
