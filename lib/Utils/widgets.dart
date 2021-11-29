
import 'package:flutter/material.dart';

class Widgetes {
  static text(
    
      String text, double fontsize, Color textcolor) {
        return
    Text(
      text,
      style: TextStyle(
           fontSize: fontsize, color: textcolor),
    );
  }
}
