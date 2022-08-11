import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shopappsnullsefety/screens/product_detail_screen.dart';
import './screens/product_overview_screens.dart';
import './providers/products_provider.dart';
import './providers/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
        ChangeNotifierProvider(create: (_) => Cart())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SHOP APP NULL SEFETY',
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (_) => ProductDetailScreen(),
        },
      ),
    );
  }
}
