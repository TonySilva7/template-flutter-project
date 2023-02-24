import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier {
  final List<String> _textList = [
    'Splash Page',
    'Profile Page',
  ];

  List<String> get listText => [..._textList];

  void setTitle(List<String> listTitle) {
    _textList.clear();
    _textList.addAll(listTitle);
    notifyListeners();
  }
}
