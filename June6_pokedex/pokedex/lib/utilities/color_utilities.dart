import 'package:flutter/material.dart';

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight =
      hsl.withLightness((hsl.lightness + amount).clamp(0.5, 1.0) as double);

  return hslLight.toColor();
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark =
      hsl.withLightness((hsl.lightness - amount).clamp(0.5, 1.0) as double);

  return hslDark.toColor();
}
