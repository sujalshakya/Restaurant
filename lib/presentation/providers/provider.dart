import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter(int newValue) {
    _counter = newValue;

    notifyListeners();
  }
}
