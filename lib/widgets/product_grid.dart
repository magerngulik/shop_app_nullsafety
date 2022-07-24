import 'package:flutter/material.dart';
import 'package:shopappsnullsefety/models/product.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import '../widgets/product_items.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) {
          return ProductItems(
            id: '${products[i].id}',
            title: '${products[i].title}',
            imgUrl: '${products[i].imageUrl}',
          );
        });
  }
}
