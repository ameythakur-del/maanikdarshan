import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar ManikDarshan({required String title}) {
  return AppBar(
    backgroundColor: const Color(0xFF69160B),
    centerTitle: true,
    title: Text(
      title,
      style: GoogleFonts.salsa(
        color: const Color(0xffffffff),
        fontSize: 24,
      ),
    ),
  );
}
