import 'package:flutter/material.dart';
import 'package:test4/KategoriPage/Shoppingcartscreen.dart';

class Elektronik extends StatefulWidget {
  @override
  State<Elektronik> createState() => _ElektronikState();
}

class _ElektronikState extends State<Elektronik> {
  final GlobalKey<CardItemState> cardItemKey1 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey2 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey3 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey4 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey5 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey6 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey7 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey8 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey9 = GlobalKey<CardItemState>();
  final GlobalKey<CardItemState> cardItemKey10 = GlobalKey<CardItemState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elektronik'),
        actions: [
          ShoppingCartButton(),
        ],
      ),
      body: ListView(
        children: [
          CardItem(
            key: cardItemKey1,
            imageAsset: 'image/hp.jpg',
            title: 'Handphone',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey2,
            imageAsset: 'image/asusrog.jpg',
            title: 'Laptop',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey3,
            imageAsset: 'image/kemara.jpeg',
            title: 'Kamera',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey4,
            imageAsset: 'image/printer.jpeg',
            title: 'Printer',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey5,
            imageAsset: 'image/smartwatch.jpg',
            title: 'smartwatch',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey6,
            imageAsset: 'image/speaker.jpeg',
            title: 'Speaker',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey7,
            imageAsset: 'image/tablet.jpg',
            title: 'Tablet',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey8,
            imageAsset: 'image/tv.jpeg',
            title: 'TV',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey9,
            imageAsset: 'image/tws.jpeg',
            title: 'TWS',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey10,
            imageAsset: 'image/headphone.jpeg',
            title: 'Headphone',
            description: 'Deskripsi Barang: Lorem ipsum dolor sit amet...',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          // Add more CardItems as needed
        ],
      ),
    );
  }
}

class CardItem extends StatefulWidget {
  final String imageAsset;
  final String title;
  final String description;
  final VoidCallback? onBeliSekarang;

  const CardItem({
    Key? key,
    required this.imageAsset,
    required this.title,
    required this.description,
    this.onBeliSekarang,
  }) : super(key: key);

  @override
  State<CardItem> createState() => CardItemState();
}

class CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Hero(
          tag: widget.title, // Unique tag for each item
          child: Image.asset(
            widget.imageAsset,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(widget.title),
        onTap: () {
          // Save the global key position before navigating to the details screen
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          Offset position = renderBox.localToGlobal(Offset.zero);
          ShoppingCart.addItemPosition = position;

          // Callback to notify _ElektronikState to update the position
          widget.onBeliSekarang?.call();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailBarangElektronik(
                imageAsset: widget.imageAsset,
                title: widget.title,
                description: widget.description,
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailBarangElektronik extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;

  const DetailBarangElektronik({
    required this.imageAsset,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang Elektronik'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              width: 200, // Set the width as needed
              height: 200, // Set the height as needed
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add item to shopping cart
                ShoppingCart.addItem(
                  title: title,
                  imageAsset: imageAsset,
                  description: description,
                );
                // Show a snackbar or navigate to the shopping cart page
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$title ditambahkan ke keranjang belanja'),
                  ),
                );
              },
              child: Text('Beli Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingCart {
  static List<CartItem> cartItems = [];
  static Offset? addItemPosition; // Position to move the item to

  static void addItem({
    required String title,
    required String imageAsset,
    required String description,
  }) {
    cartItems.add(
      CartItem(
        title: title,
        imageAsset: imageAsset,
        description: description,
      ),
    );
  }
}

class ShoppingCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
          onPressed: () {
            // Open shopping cart
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoppingCartScreen(),
              ),
            );
          },
          icon: Icon(Icons.shopping_cart),
        ),
        if (ShoppingCart.cartItems.isNotEmpty)
          Positioned(
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
              child: Text(
                ShoppingCart.cartItems.length.toString(),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class CartItem {
  final String title;
  final String imageAsset;
  final String description;

  CartItem({
    required this.title,
    required this.imageAsset,
    required this.description,
  });
}

void main() {
  runApp(MaterialApp(
    home: Elektronik(),
  ));
}
