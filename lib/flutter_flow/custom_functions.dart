import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

Color? dateExpirationColor(DateTime date) {
  // check if date expires within next month or 3
  if (date.isBefore(DateTime.now().add(Duration(days: 30)))) {
    return Colors.red;
  } else if (date.isBefore(DateTime.now().add(Duration(days: 90)))) {
    return Colors.orange;
  } else {
    return Colors.green;
  }
}
