import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalTextStyles {
  static TextStyle zhead = GoogleFonts.dmSerifDisplay(
      fontSize: 55,
      fontWeight: FontWeight.bold,
      color: ColorTheme.secondarycolor);
  static TextStyle MainHead = GoogleFonts.dmSerifDisplay(
      fontSize: 40, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
}
