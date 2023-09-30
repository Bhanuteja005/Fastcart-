import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int subtotal(
  int quantity,
  double price,
) {
  // get the multplication number of double and int functions
  return (quantity * price).toInt();
}

double totalprice(
  double subtotal,
  double tax,
) {
  // get the sum of double funtion one is integer and another in percentage
  double taxAmount = (tax / 100) * subtotal;
  return subtotal + taxAmount;
}
