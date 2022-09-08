import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar ManikDarshan({required String title}) {
  return AppBar(
  centerTitle: true,
  backgroundColor: const Color(0xFF7F1B0E),
  title: Text(
  title,
  style: TextStyle(fontFamily: 'Mukta', fontWeight: FontWeight.w700),
  ),
  );
}
