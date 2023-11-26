import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test4/searchProduct/searchpage.dart';

class Likes {
  static final Likes _instance = Likes._internal();
  factory Likes() => _instance;

  Likes._internal();

  final List<Item> likedItems = [];

  void toggleLike(Item item) {
    if (likedItems.contains(item)) {
      likedItems.remove(item);
    } else {
      likedItems.add(item);
    }
  }
}

class LikesPage extends StatefulWidget {
  @override
  _LikesPageState createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  final Likes likes = Likes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: likes.likedItems.isEmpty
            ? Center(
                child: Text('Barang belum di like'),
              )
            : ListView.builder(
                itemCount: likes.likedItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: ListTile(
                      leading: Hero(
                        tag: 'hero-tag-${likes.likedItems[index].name}',
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(likes.likedItems[index].imagePath),
                        ),
                      ),
                      title: Text(likes.likedItems[index].name),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              likedItem: likes.likedItems[index],
                              onRemove: () {
                                // Trigger a rebuild when an item is removed
                                setState(() {});
                              },
                            ),
                          ),
                        );
                      },
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Remove the liked item from the list
                          likes.toggleLike(likes.likedItems[index]);

                          // Trigger a rebuild to reflect the changes
                          setState(() {});
                        },
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Item likedItem;
  final VoidCallback onRemove;

  DetailPage({required this.likedItem, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    final priceFormat = NumberFormat('#,###.000', 'en_US');
    final formattedPrice = priceFormat.format(likedItem.price);

    //Membagi harga yang diformat menjadi bagian bilangan bulat dan desimal
    final parts = formattedPrice.split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: 'hero-tag-${likedItem.name}',
                  child: CircleAvatar(
                    backgroundImage: AssetImage(likedItem.imagePath),
                    radius: 80,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      likedItem.name,
                      style: const TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Harga: $integerPart.$decimalPart',
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      likedItem.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Features:',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    for (var feature in likedItem.features)
                      Text(
                        '- $feature',
                        style: const TextStyle(fontSize: 16),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //Navigasi kembali ke halaman sebelumnya
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
