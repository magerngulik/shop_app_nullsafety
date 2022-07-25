import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Product extends ChangeNotifier {
  String? id;
  String? title;
  String? description;
  double? price;
  String? imageUrl;
  bool? isFavorite;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.isFavorite});

  void toogleFavoriteStatur() {
    isFavorite = !isFavorite!;
    notifyListeners();
  }
}
