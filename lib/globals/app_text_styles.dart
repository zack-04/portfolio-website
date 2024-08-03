import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
static TextStyle headerTextStyle({Color color = Colors.white}) {
    return GoogleFonts.signikaNegative(
      textStyle:  TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static TextStyle montserratStyle(
      {required Color color, double fontsize = 24}) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  static TextStyle headingStyles(
      {double fontsize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
      textStyle: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    );
  }

  static TextStyle normalStyle({Color color = Colors.white}) {
    return GoogleFonts.mukta(
      textStyle: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
      ),
    );
  }
}
