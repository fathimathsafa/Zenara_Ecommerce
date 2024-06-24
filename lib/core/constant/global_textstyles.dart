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
  static TextStyle Welcomedtitle = GoogleFonts.josefinSans(
      fontSize: 30, fontWeight: FontWeight.bold, color: ColorTheme.maincolor);
  static TextStyle Welcomedtitle2 =
      GoogleFonts.josefinSans(fontSize: 23, color: ColorTheme.maincolor);
  static TextStyle ButtonText = GoogleFonts.poppins(
      fontSize: 20,
      color: ColorTheme.secondarycolor,
      fontWeight: FontWeight.bold);
  static TextStyle advertise = GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.bold, color: ColorTheme.black);
  static TextStyle CardText = GoogleFonts.poppins(
      fontSize: 15, color: ColorTheme.maincolor, fontWeight: FontWeight.bold);
}
