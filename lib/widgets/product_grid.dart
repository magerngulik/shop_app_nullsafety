import 'package:flutter/material.dart';
import 'package:shopappsnullsefety/providers/product.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import '../widgets/product_items.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({Key? key, this.showOnlyFavorites}) : super(key: key);
  final bool? showOnlyFavorites;

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = (showOnlyFavorites == true)
        ? productData.favoriteItems
        : productData.items;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) {
          return ChangeNotifierProvider.value(
            value: products[i],
            child: ProductItems(),
          );
        });
  }
}
