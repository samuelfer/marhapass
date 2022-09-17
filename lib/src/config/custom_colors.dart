import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacityLight = {
  50: const Color.fromRGBO(63, 81, 126, .1),
  10: const Color.fromRGBO(63, 81, 126, .2),
  200: const Color.fromRGBO(63, 81, 126, .3),
  300: const Color.fromRGBO(63, 81, 126, .4),
  400: const Color.fromRGBO(63, 81, 126, .5),
  500: const Color.fromRGBO(63, 81, 126, .6),
  600: const Color.fromRGBO(63, 81, 126, .7),
  700: const Color.fromRGBO(63, 81, 126, .8),
  800: const Color.fromRGBO(63, 81, 126, .9),
  900: const Color.fromRGBO(63, 81, 126, 1),
};

Map<int, Color> _swatchOpacityDark = {
  50: const Color.fromRGBO(24, 37, 69, .1),
  10: const Color.fromRGBO(24, 37, 69, .2),
  200: const Color.fromRGBO(24, 37, 69, .3),
  300: const Color.fromRGBO(24, 37, 69, .4),
  400: const Color.fromRGBO(24, 37, 69, .5),
  500: const Color.fromRGBO(24, 37, 69, .6),
  600: const Color.fromRGBO(24, 37, 69, .7),
  700: const Color.fromRGBO(24, 37, 69, .8),
  800: const Color.fromRGBO(24, 37, 69, .9),
  900: const Color.fromRGBO(24, 37, 69, 1),
};

abstract class CustomColors {
  static Color customColorPrimary = const Color.fromRGBO(63, 81, 126, 5);

  static MaterialColor customSwatchColorLight =
      MaterialColor(0xFF3f517e, _swatchOpacityLight);

  static MaterialColor customSwatchColorDark =
      MaterialColor(0xFF182545, _swatchOpacityDark);
}
