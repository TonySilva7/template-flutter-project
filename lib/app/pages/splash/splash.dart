import 'package:flutter/material.dart';
import 'package:template_project/app/core/ui/helpers/size_extensions.dart';
import 'package:template_project/app/core/ui/styles/app_styles.dart';

import 'package:template_project/app/core/ui/styles/my_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Splash Page',
          style: MyTextStyles.instance.title,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'seu.email@.com',
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        hintText: 'sua***senha',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: AppStyles.instance.primaryButton,
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
