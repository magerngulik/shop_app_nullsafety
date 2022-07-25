import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopappsnullsefety/screens/product_detail_screen.dart';
import '../providers/product.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: GridTile(
        child: GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, ProductDetailScreen.routeName,
                  arguments: product.id);
            }),
            child: Image.network(product.imageUrl.toString())),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            builder: (ctx, product, child) => IconButton(
              icon: Icon(
                  product.isFavorite! ? Icons.favorite : Icons.favorite_border),
              color: Colors.amber,
              onPressed: () {
                product.toogleFavoriteStatur();
              },
            ),
          ),
          title: Text(
            '${product.title}',
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.amber,
              )),
        ),
      ),
    );
  }
}
