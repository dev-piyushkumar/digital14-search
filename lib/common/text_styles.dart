import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyles {
  GlobalTextStyles._();

  final TextStyle appBarText = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  final TextStyle defaultText = GoogleFonts.roboto(
    color: const Color(0xFF070707),
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  final TextStyle headerText = GoogleFonts.roboto(
    color: const Color(0xFF070707),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  final TextStyle defaultSubText = GoogleFonts.roboto(
    color: const Color(0xFF76838c),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

GlobalTextStyles globalTextStyles = GlobalTextStyles._();
