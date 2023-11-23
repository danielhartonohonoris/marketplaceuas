import 'package:flutter/material.dart';
import 'package:test4/KategoriPage/Elektronik.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja'),
      ),
      body: ListView.builder(
        itemCount: ShoppingCart.cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = ShoppingCart.cartItems[index];
          return ListTile(
            title: Text(cartItem.title),
            subtitle: Text(cartItem.description),
            leading: Image.asset(
              cartItem.imageAsset,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            // You can add more details as needed
          );
        },
      ),
    );
  }
}
