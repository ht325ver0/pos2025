import 'package:flutter/material.dart';

class CounterStore with ChangeNotifier {
  int counter = 0;

  void incrementCounter() {   
    counter++;
    notifyListeners();
  }
}