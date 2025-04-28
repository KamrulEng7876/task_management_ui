import 'dart:core';

import 'package:flutter/material.dart';

class CardModel extends ChangeNotifier {
  final List<Map<String, dynamic>> items = [
    {"title": "Total number of people", "value": 52},
    {"title": "Total number of rooms", "value": 7},
    {"title": "Total area (sqft.)", "value": 3700},
    {"title": "Total AC", "value": 5},
    {"title": "Total Refrigerator", "value": 2},
    {"title": "Total Computers", "value": 60},
    {"title": "Total Indoor Plants", "value": 23},
    {"title": "Total Kitchen Burner", "value": 2},
  ];

  void increment(int index) {
    items[index]["value"]++;
    notifyListeners();
  }

  void decrement(int index) {
    if (items[index]["value"] > 0) {
      items[index]["value"]--;
      notifyListeners();
    }
  }
  // String calculateTotal() {
  //   double total = 0;
  //   for (var item in ) {
  //     total += double.parse(item[1]); // Convert string price to double
  //   }
  //   return total.toStringAsFixed(2);
  // }
}
