import 'package:flutter/material.dart';

Color bgColor = const Color(0xFF1C1C23);

const LinearGradient gradient = LinearGradient(
  colors: [
    Colors.white10,
    Colors.transparent,
  ],
  transform: GradientRotation(45),
);

const LinearGradient googleGrad = LinearGradient(
  colors: [
    Colors.white,
    Color.fromARGB(255, 254, 254, 254),
  ],
);

const LinearGradient facebookGrad = LinearGradient(
  colors: [
    Color(0xFF1771E6),
    Color.fromARGB(255, 172, 193, 233),
    Color(0xFF1771E6),
  ],
);

TextStyle kTextStyle(
    {Color? color,
    double size = 14,
    FontWeight fontWeight = FontWeight.w500,
    double? letterSpacing,
    double? height}) {
  return TextStyle(
      color: color ?? Colors.white,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height);
}
