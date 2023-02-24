import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF1E90FF);
  Color get primaryLight => const Color(0xFF6AB7FF);
  Color get primaryDark => const Color(0xFF0069C0);
  Color get onPrimary => const Color(0xFFFFFFFF);
  Color get secondary => const Color(0xFFFFC107);
  Color get secondaryLight => const Color(0xFFFFF350);
  Color get secondaryDark => const Color(0xFFC79100);

  Color get background => const Color(0xFFF5F5F5);
  Color get backgroundLight => const Color(0xFFFFFFFF);
  Color get backgroundDark => const Color(0xFFC7C7C7);

  Color get surface => const Color(0xFFFFFFFF);
  Color get error => const Color(0xFFFF5722);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
