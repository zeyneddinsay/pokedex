import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'pokedex';
  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(48));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(30));
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: 20);
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }

  static getpokeLabelTextStyle() {
    return TextStyle(
        fontSize: _calculateFontSize(20),
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }

  static getpokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(16), color: Colors.black);
  }
}
