import 'package:flutter/material.dart';

class MyTextStyles {
  static MyTextStyles? _instance;

  MyTextStyles._();

  static MyTextStyles get instance {
    _instance ??= MyTextStyles._();
    return _instance!;
  }

  // Faça a mesma coisa para os outros estilos de texto
  String get myFont => 'Roboto';

  TextStyle get title => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: myFont,
      );

  TextStyle get subtitle => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: myFont,
      );

  TextStyle get body => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: myFont,
      );

  TextStyle get textButtonLabel => title.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}

extension MyTextStylesExtension on BuildContext {
  MyTextStyles get myTextStyles => MyTextStyles.instance;
}
