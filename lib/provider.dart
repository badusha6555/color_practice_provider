import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  Color containerColor = Colors.amber;

  void green() {
    containerColor = Colors.green;
    notifyListeners();
  }

  void red() {
    containerColor = Colors.red;
    notifyListeners();
  }

  List<Color> a = [Colors.blue, Colors.red, Colors.yellow, Colors.purple];

  int b = 0;

  colorchange() {
    b = (b + 1) % a.length;
    notifyListeners();
  }
}
