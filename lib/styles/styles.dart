import 'package:flutter/material.dart';
import 'package:pyrobyte_test/constans.dart';

class CustomStyles {
  static TextStyle robotoLight({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color,
          fontFamily: CustomFonts.robotoLight,
          fontSize: fontSize);
  static TextStyle robotoRegular({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color,
          fontFamily: CustomFonts.robotoRegular,
          fontSize: fontSize);
  static TextStyle robotoMedium({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color,
          fontFamily: CustomFonts.robotoMedium,
          fontSize: fontSize);
  static TextStyle robotoBold({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color, fontFamily: CustomFonts.robotoBold, fontSize: fontSize);

  static TextStyle jostLight({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color, fontFamily: CustomFonts.jostLight, fontSize: fontSize);
  static TextStyle jostRegular({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color,
          fontFamily: CustomFonts.jostRegular,
          fontSize: fontSize);
  static TextStyle jostMedium({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color, fontFamily: CustomFonts.jostMedium, fontSize: fontSize);
  static TextStyle jostBold({
    Color? color = CustomColors.black,
    double? fontSize = 14,
  }) =>
      TextStyle(
          color: color, fontFamily: CustomFonts.jostBold, fontSize: fontSize);
}
