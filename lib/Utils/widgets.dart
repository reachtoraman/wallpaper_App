
import 'package:flutter/material.dart';

class Widgetes {
  static text(
      String text, String fontfamily, double fontsize, Color textcolor) {
    Text(
      text,
      style: TextStyle(
          fontFamily: fontfamily, fontSize: fontsize, color: textcolor),
    );
  }
}
