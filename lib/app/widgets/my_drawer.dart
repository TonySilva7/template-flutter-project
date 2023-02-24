import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/styles/colors_app.dart';

import '../core/routes/my_routes.dart';
import '../core/ui/styles/my_text_styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget _createItem(IconData icon, String label, void Function() onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        label,
        style: MyTextStyles.instance.subtitle,
      ),
      dense: true,
      // trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: context.colorsApp.secondary,
            child: Text(
              'Título do Drawer',
              style: MyTextStyles.instance.title.copyWith(
                color: context.colorsApp.background,
              ),
            ),
          ),
          _createItem(
            Icons.home,
            'Home',
            () => Navigator.of(context).pushReplacementNamed(MyRoutes.home),
          ),
          _createItem(
            Icons.sentiment_satisfied,
            'Profile',
            () => Navigator.of(context).pushReplacementNamed(MyRoutes.profile),
          ),
        ],
      ),
    );
  }
}
