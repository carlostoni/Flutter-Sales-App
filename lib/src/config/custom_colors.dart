import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(255, 240, 178, 0.1),
  100: const Color.fromRGBO(255, 240, 178, 0.2),
  200: const Color.fromRGBO(255, 240, 178, 0.3),
  300: const Color.fromRGBO(255, 240, 178, 0.4),
  400: const Color.fromRGBO(255, 240, 178, 0.5),
  500: const Color.fromRGBO(255, 240, 178, 0.6),
  600: const Color.fromRGBO(255, 240, 178, 0.7),
  700: const Color.fromRGBO(255, 240, 178, 0.8),
  800: const Color.fromRGBO(255, 240, 178, 0.9),
  900: const Color.fromRGBO(255, 240, 178, 1),
   
};

abstract class CustomColors {
  static Color customContrastColor = Colors.deepOrange;

  static MaterialColor customSwatchColor =
  MaterialColor(0xFFFFE0B2, _swatchOpacity);
}