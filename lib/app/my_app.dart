import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/theme/my_theme.dart';
import 'package:template_project/app/pages/splash/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.myTheme,
      home: SplashPage(
        key: key,
      ),
    );
  }
}
