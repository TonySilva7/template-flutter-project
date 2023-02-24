import 'package:flutter/material.dart';
import 'package:template_project/app/core/routes/my_routes.dart';
import 'package:template_project/app/pages/splash/splash.dart';

import '../../pages/splash/profile_page.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._internal();

  factory AppRoutes() {
    return _instance;
  }

  AppRoutes._internal();

  final Map<String, WidgetBuilder> appRoutes = {
    MyRoutes.home: (BuildContext context) => SplashPage(),
    MyRoutes.profile: (BuildContext context) => const ProfilePage(),
  };
}
