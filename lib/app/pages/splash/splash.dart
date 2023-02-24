import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/app/core/providers/text_provider.dart';

import 'package:template_project/app/core/ui/styles/app_styles.dart';

import 'package:template_project/app/core/ui/styles/my_text_styles.dart';

import '../../core/services/custom_dio.dart';
import '../../widgets/my_drawer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _formKey = GlobalKey<FormState>();
  final _title1 = TextEditingController();
  final _title2 = TextEditingController();
  final Map<String, dynamic> _formData = {};

  final CustomDioMedium apiService1 = CustomDioMedium('https://api.example.com');

  void handleOnSubmit(BuildContext context) {
    var textProvider = Provider.of<TextProvider>(context, listen: false);
    var isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      _formKey.currentState?.save();
      textProvider.setTitle([_formData['title1'], _formData['title2']]);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _title1.dispose();
    _title2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextProvider textProvider = Provider.of<TextProvider>(context);
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          textProvider.listText[0],
          style: MyTextStyles.instance.title,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _title1,
                      onSaved: (value) => _formData['title1'] = value ?? '',
                      validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                      decoration: const InputDecoration(
                        labelText: 'Título 1',
                        // hintText: '...meu título 1',
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _title2,
                      onSaved: (value) => _formData['title2'] = value ?? '',
                      validator: (value) => (value == null || value.isEmpty) ? 'Campo obrigatório' : null,
                      decoration: const InputDecoration(
                        labelText: 'Título 2',
                        // hintText: '...meu título 2',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => handleOnSubmit(context),
              style: AppStyles.instance.primaryButton,
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
