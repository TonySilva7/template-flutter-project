import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/styles/app_styles.dart';
import 'package:template_project/app/core/ui/styles/colors_app.dart';
import 'package:template_project/app/core/ui/styles/my_text_styles.dart';

class MyTheme {
  static MyTheme? _instance;

  MyTheme._();

  static MyTheme get instance {
    _instance ??= MyTheme._();
    return _instance!;
  }

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(color: ColorsApp.instance.backgroundDark),
  );

  static final theme = ThemeData(
    primaryColor: ColorsApp.instance.primary,
    scaffoldBackgroundColor: ColorsApp.instance.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorsApp.instance.surface,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      //  ---
      labelStyle: MyTextStyles.instance.subtitle.copyWith(color: ColorsApp.instance.backgroundDark),
      hintStyle: MyTextStyles.instance.body.copyWith(color: ColorsApp.instance.backgroundDark),
      errorStyle: MyTextStyles.instance.body.copyWith(color: ColorsApp.instance.error),
      errorBorder: _defaultInputBorder.copyWith(borderSide: BorderSide(color: ColorsApp.instance.error)),
      focusedErrorBorder: _defaultInputBorder.copyWith(borderSide: BorderSide(color: ColorsApp.instance.error)),
      // ---
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(7),
      //   borderSide: BorderSide(
      //     color: ColorsApp.instance.error,
      //   ),
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(7),
      //   borderSide: BorderSide(
      //     color: ColorsApp.instance.error,
      //   ),
      // ),
      // labelStyle: TextStyle(
      //   color: ColorsApp.instance.onSurface,
      // ),
      // hintStyle: TextStyle(
      //   color: ColorsApp.instance.onSurface,
      // ),
      // errorStyle: TextStyle(
      //   color: ColorsApp.instance.error,
      // ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsApp.instance.primary,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: ColorsApp.instance.background,
      ),
      titleTextStyle: TextStyle(
        color: ColorsApp.instance.background,
      ),
    ),
    drawerTheme: DrawerThemeData(
      elevation: 0,
      backgroundColor: ColorsApp.instance.background,
    ),
  );
}
