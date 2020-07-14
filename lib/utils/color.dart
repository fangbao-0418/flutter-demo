
import 'package:flutter/material.dart';
var c = "dc380d";

Color rgbColor (String c) {
  // return  Color(int.parse(c, radix:16) | 0xFF000000);
  return Color(int.parse(c,radix:16)).withAlpha(255);
}
