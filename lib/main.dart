import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/app/core/providers/auth_provider.dart';
import 'package:template_project/app/core/providers/text_provider.dart';

import 'app/my_app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => AuthProvider()),
      ChangeNotifierProvider(create: (ctx) => TextProvider()),
    ],
    child: const MyApp(),
  ));
}
