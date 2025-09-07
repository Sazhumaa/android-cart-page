import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;

  const ProductItem({super.key, required this.id, required this.title});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context, listen: false);

    return Card(
      margin: const EdgeInsets.all(12),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        leading: CircleAvatar(
          backgroundColor: Colors.amber[200],
          child: const Icon(Icons.local_grocery_store, color: Colors.brown),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.brown[800],
          ),
        ),
        trailing: ElevatedButton.icon(
          icon: const Icon(Icons.add_shopping_cart),
          label: const Text("Tambah"),
          onPressed: () {
            cart.addItem(id, title);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("$title ditambahkan ke keranjang"),
                backgroundColor: Colors.amber[700],
              ),
            );
          },
        ),
      ),
    );
  }
}
