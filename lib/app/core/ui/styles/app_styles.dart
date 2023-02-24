import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/styles/colors_app.dart';
import 'package:template_project/app/core/ui/styles/my_text_styles.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get instance {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.instance.secondary,
        foregroundColor: ColorsApp.instance.onPrimary,
        textStyle: MyTextStyles.instance.textButtonLabel,
        minimumSize: const Size(102, 40),
      );
}

extension AppStylesExtension on BuildContext {
  AppStyles get appStyles => AppStyles.instance;
}
