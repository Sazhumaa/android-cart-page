import 'package:flutter/material.dart';
import 'widgets/product_item.dart';
import 'widgets/cart_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> products = const [
    {"id": "p1", "title": "Apel"},
    {"id": "p2", "title": "Jeruk"},
    {"id": "p3", "title": "Pisang"},
    {"id": "p4", "title": "Mangga"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Produk"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          )
        ],
      ),
      body: ListView(
        children: products
            .map((prod) => ProductItem(id: prod['id']!, title: prod['title']!))
            .toList(),
      ),
    );
  }
}
