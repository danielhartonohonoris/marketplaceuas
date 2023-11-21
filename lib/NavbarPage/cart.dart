import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartItem {
  final String productName;
  final double price;
  final int quantity;
  final String imagePath;

  CartItem({
    required this.productName,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItem> cartItems = [
    CartItem(
      productName: 'Aqua',
      price: 4.000,
      quantity: 2,
      imagePath: 'image/aqua.jpg',
    ),
    CartItem(
      productName: 'Handphone Oppo',
      price: 200000,
      quantity: 1,
      imagePath: 'image/hp.jpg',
    ),
    CartItem(
      productName: 'joystick',
      price: 200000,
      quantity: 1,
      imagePath: 'image/joystick.jpeg',
    ),
    CartItem(
      productName: 'parfum',
      price: 200000,
      quantity: 1,
      imagePath: 'image/parfum.jpg',
    ),
    CartItem(
      productName: 'Topi',
      price: 200000,
      quantity: 1,
      imagePath: 'image/topi.jpeg',
    ),
    CartItem(
      productName: 'Le Mineral',
      price: 200000,
      quantity: 1,
      imagePath: 'image/le_mineral.jpeg',
    ),
    // Add more cart items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cartItems.isEmpty
          ? Center(
              child: Text('Your shopping cart is empty.'),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return _buildCartItem(cartItems[index]);
              },
            ),
    );
  }

  Widget _buildCartItem(CartItem item) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              item.imagePath,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.productName,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Price: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(item.price)}',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Quantity: ${item.quantity}',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                _removeItemFromCart(item);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _removeItemFromCart(CartItem item) {
    setState(() {
      cartItems.remove(item);
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: Cart(),
  ));
}
