class CartItem {
  final String id;
  final String title;
  int quantity;

  CartItem({
    required this.id,
    required this.title,
    this.quantity = 1,
  });
}
