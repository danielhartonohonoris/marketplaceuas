import 'package:flutter/material.dart';
import 'package:test4/KategoriPage/Shoppingcartscreen.dart';

class MakananMinuman extends StatefulWidget {
  @override
  State<MakananMinuman> createState() => _MakananMinumanState();
}

class _MakananMinumanState extends State<MakananMinuman> {
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
        title: Text('Makanan & Minuman'),
        actions: [
          ShoppingCartButton(),
        ],
      ),
      body: ListView(
        children: [
          CardItem(
            key: cardItemKey1,
            imageAsset: 'image/bebek.jpeg',
            title: 'Bebek Panggang',
            description: 'Bebek panggang adalah hidangan yang terbuat dari bebek yang dipanggang dalam oven atau peralatan memasak lainnya. Proses ini biasanya melibatkan memarinate atau mengoleskan bebek dengan bumbu khusus untuk meningkatkan rasa dan kelembapan daging. Bebek panggang seringkali memiliki kulit yang renyah dan rasa daging yang lezat.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey2,
            imageAsset: 'image/chatime.jpeg',
            title: 'Chatime',
            description: 'Chatime adalah jaringan gerai minuman teh asal Taiwan yang dikenal secara internasional. Berdiri pada tahun 2005, Chatime menyajikan berbagai minuman teh dengan pilihan rasa yang luas dan inovatif. Spesialisasinya adalah bubble tea atau pearl milk tea, yang terdiri dari campuran teh atau minuman lainnya dengan tambahan mutiara hitam yang kenyal.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey3,
            imageAsset: 'image/kfc.jpeg',
            title: 'KFC',
            description: 'KFC, atau Kentucky Fried Chicken, adalah waralaba restoran cepat saji yang terkenal di seluruh dunia. Didirikan oleh Colonel Harland Sanders pada tahun 1930-an, KFC dikenal karena spesialisasinya dalam ayam goreng dengan resep rempah-rempah yang khas.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey4,
            imageAsset: 'image/kopken.jpeg',
            title: 'Kopi Kenangan',
            description: 'Kopi Kenangan adalah jaringan gerai kopi yang berasal dari Indonesia dan telah berkembang pesat di Asia Tenggara. Didirikan pada tahun 2017, Kopi Kenangan dikenal karena menyajikan kopi berkualitas tinggi dengan harga yang terjangkau, sambil menawarkan berbagai varian minuman inovatif.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey5,
            imageAsset: 'image/martabakmanis.jpeg',
            title: 'Martabak Manis',
            description: 'Martabak manis adalah hidangan kue Indonesia yang terkenal dan digemari oleh banyak orang. Martabak ini terdiri dari lapisan tipis adonan yang dibuat dari campuran tepung terigu, telur, gula, dan santan, yang kemudian dipanggang atau digoreng. Setelah itu, martabak manis diberi berbagai topping, seperti keju parut, cokelat, kacang, atau meses.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey6,
            imageAsset: 'image/martabaktelur.jpeg',
            title: 'Martabak Telur',
            description: 'Martabak telur adalah hidangan populer Indonesia yang terbuat dari adonan tepung yang tipis dan kenyal, dilipat dan diisi dengan campuran telur, daging giling, bawang merah, bawang putih, daun bawang, dan berbagai bumbu lainnya. Setelah diisi, martabak telur kemudian dipanggang atau digoreng hingga kulitnya menjadi renyah dan berwarna kecokelatan.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey7,
            imageAsset: 'image/nasgor.jpeg',
            title: 'Nasi Goreng',
            description: 'Nasi goreng adalah hidangan khas Indonesia yang terbuat dari nasi yang digoreng bersama bumbu-bumbu tertentu dan bahan tambahan lainnya. Nasi goreng merupakan salah satu hidangan yang sangat populer dan sering dianggap sebagai makanan nasional Indonesia.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
          SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey8,
            imageAsset: 'image/pizza.jpeg',
            title: 'Pizza',
            description: 'Pizza adalah hidangan yang berasal dari Italia dan telah menjadi salah satu makanan yang populer di seluruh dunia. Pizza umumnya terdiri dari adonan tipis atau tebal yang dilapisi dengan saus tomat, keju, dan berbagai topping sesuai selera.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
           SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey9,
            imageAsset: 'image/sate.jpeg',
            title: 'Sate',
            description: 'Sate, atau sering juga disebut satay, adalah hidangan yang terdiri dari potongan-potongan daging yang ditusuk ke atas tusukan bambu atau logam, kemudian dipanggang atau dibakar. Hidangan ini umumnya diberi bumbu kacang atau bumbu kecap dan sering disajikan bersama dengan nasi atau ketupat.',
            onBeliSekarang: () {
              // Rebuild the widget to update the position
              setState(() {});
            },
          ),
           SizedBox(height: 1), // Add some spacing between items
          CardItem(
            key: cardItemKey10,
            imageAsset: 'image/xiboba.jpeg',
            title: 'Xiboba',
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
        title: Text('Detail Barang Makanan & Minuman'),
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
              child: Text('Add to Cart'),
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
    home: MakananMinuman(),
  ));
}