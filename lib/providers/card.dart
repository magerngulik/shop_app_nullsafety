import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CardItem(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.price});
}

class Card extends ChangeNotifier {
  Map<String, CardItem> _items = {};
  Map<String, CardItem> get item {
    return {..._items};
  }

  void addItem(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (value) => CardItem(
              id: value.id,
              title: value.title,
              quantity: value.quantity + 1,
              price: price));
    } else {
      _items.putIfAbsent(
          productId,
          () => CardItem(
              id: DateTime.now().toString(),
              title: title,
              quantity: 1,
              price: price));
    }
  }
}
