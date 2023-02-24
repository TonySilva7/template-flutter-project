import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF0D47A1);
  Color get primaryDark => const Color(0xFF002171);
  Color get primaryLight => const Color(0xFF5472D3);
  Color get secondary => const Color(0xFFE65100);
  Color get secondaryDark => const Color(0xFFAD3400);
  Color get secondaryLight => const Color(0xFFFF6D00);
  Color get background => const Color(0xFFECEFF1);
  Color get surface => const Color(0xFFFFFFFF);
  Color get error => const Color(0xFFB00020);
  Color get onPrimary => const Color(0xFFFFFFFF);
  Color get onSecondary => const Color(0xFF000000);
  Color get onBackground => const Color(0xFF000000);
  Color get onSurface => const Color(0xEAEAECFF);
  Color get onError => const Color(0xFFAD3400);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
