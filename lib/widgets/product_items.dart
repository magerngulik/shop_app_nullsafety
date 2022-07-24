import 'package:flutter/material.dart';
import 'package:shopappsnullsefety/screens/product_detail_screen.dart';

class ProductItems extends StatelessWidget {
  final String title;
  final String id;
  final String imgUrl;
  const ProductItems({
    Key? key,
    required this.title,
    required this.id,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: GridTile(
        child: GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, ProductDetailScreen.routeName,
                  arguments: id);
            }),
            child: Image.network(imgUrl)),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.amber,
            ),
            onPressed: () {},
          ),
          title: Text(
            '${title}',
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
