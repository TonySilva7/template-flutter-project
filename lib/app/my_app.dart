import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/theme/my_theme.dart';

import 'core/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.theme,
      // home: SplashPage(
      //   key: key,
      // ),
      routes: AppRoutes().appRoutes,
    );
  }
}
