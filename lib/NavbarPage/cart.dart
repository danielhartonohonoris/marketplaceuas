import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test4/searchProduct/searchpage.dart';



class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;

  Cart._internal();

  final List<Item> _items = [];
  final Map<Item, int> _itemQuantities = {};

  List<Item> get items => _items;

  void addItem(Item item) {
    if (_itemQuantities.containsKey(item)) {
      _itemQuantities[item] = _itemQuantities[item]! + 1;
    } else {
      _itemQuantities[item] = 1;
      _items.add(item);
    }
  }

  void removeItem(Item item) {
    if (_itemQuantities.containsKey(item)) {
      _itemQuantities[item] = _itemQuantities[item]! - 1;
      if (_itemQuantities[item]! <= 0) {
        _items.remove(item);
        _itemQuantities.remove(item);
      }
    }
  }

  int getItemQuantity(Item item) {
    return _itemQuantities[item] ?? 0;
  }

  double calculateTotalPrice() {
    double totalPrice = 0.0;

    for (var item in _items) {
      totalPrice += (item.price * (_itemQuantities[item] ?? 0));
    }

    return totalPrice;
  }
  void resetCart() {
    _items.clear();
    _itemQuantities.clear();
  }
}



class _CartPageState extends State<CartPage> {
  final Cart _cart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) {
          final item = _cart.items[index];

          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.name),
                Text('Jumlah ${_cart.getItemQuantity(item)}'),
              ],
            ),
            subtitle: Text('Harga: ${_formatCurrency(item.price)}'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(item.imagePath),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      _cart.removeItem(item);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _cart.addItem(item);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            _showPurchaseDialog(context, _cart.calculateTotalPrice());
          },
          child: Text('Buy'),
        ),
      ),
    );
  }

  String _formatCurrency(double price) {
    final priceFormat = NumberFormat('#,###.000', 'id_ID');
    final formattedPrice = priceFormat.format(price);

    final parts = formattedPrice.split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    return '$integerPart.$decimalPart';
  }

void _showPurchaseDialog(BuildContext context, double totalPrice) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Pembayaran'),
          content: Text('Total Harga: ${_formatCurrency(totalPrice)}'),
          actions: [
            TextButton(
              onPressed: () {
                print('Pembayaran Berhasil');
                Navigator.of(context).pop();
                _showSuccessDialog(context); 
                _cart.resetCart();
              },
              child: Text('Confirm'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pembayaran Berhasil'),
        content: Text('Terima Kasih Telah Membeli'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); //Popup success
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}