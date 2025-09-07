import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: cart.items.length,
      itemBuilder: (ctx, i) {
        final item = cart.items.values.toList()[i];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber[300],
              child: const Icon(Icons.star, color: Colors.white),
            ),
            title: Text(
              item.title,
              style: TextStyle(color: Colors.brown[700]),
            ),
            subtitle: Text("Jumlah: ${item.quantity}"),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle, color: Colors.redAccent),
              onPressed: () {
                cart.removeItem(item.id);
              },
            ),
          ),
        );
      },
    );
  }
}
