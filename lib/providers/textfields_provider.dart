import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  String text = '';
  bool isObscured = true;

  void updateText(String newText) {
    text = newText;
    notifyListeners();
  }

  void toggleObscureText() {
    isObscured = !isObscured;
    notifyListeners();
  }
}
