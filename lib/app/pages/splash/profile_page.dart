import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/app/core/providers/text_provider.dart';
import 'package:template_project/app/widgets/my_drawer.dart';

import '../../core/ui/styles/my_text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Consumer<TextProvider>(
            builder: (context, textProvider, child) {
              return Text(
                textProvider.listText[1],
                style: MyTextStyles.instance.title,
              );
            },
          ),
        ),
        drawer: const MyDrawer(),
        body: Consumer<TextProvider>(
          builder: (context, textProvider, child) {
            return Center(
              child: Text(
                'Conteúdo da página - ${textProvider.listText[1]}',
                style: MyTextStyles.instance.subtitle,
              ),
            );
          },
        ));
  }
}
