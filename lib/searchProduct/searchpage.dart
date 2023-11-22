import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test4/NavbarPage/cart.dart';
import 'package:test4/NavbarPage/likes.dart';
import 'package:test4/searchProduct/Aqua.dart';
import 'package:test4/searchProduct/Headset.dart';
import 'package:test4/searchProduct/HpOppo.dart';
import 'package:test4/searchProduct/Joystick.dart';
import 'package:test4/searchProduct/LeMineral.dart';
import 'package:test4/searchProduct/Parfum.dart';
import 'package:test4/searchProduct/SepatuConverse.dart';
import 'package:test4/searchProduct/Topi.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  //List Barang
  final List<Item> _dataList = [
    HpOppo("Hp Oppo", "image/hp.jpg", 2000.0),
    SepatuConverse("Sepatu Converse", "image/sepatu.jpg", 800.0),
    Joystick("Joystick", "image/joystick.jpeg", 300.0),
    Aqua("Aqua", "image/aqua.jpg", 4.0),
    LeMineral("Le Mineral", "image/le_mineral.jpeg", 4.0),
    Topi("Topi", "image/topi.jpeg", 20.0),
    Headset("Headset", "image/headset.jpeg", 300.0),
    Parfum("Parfum", "image/parfum.jpg", 250.0),
  ];

  //Memfilter daftar barang berdasarkan nama sesuai dengan input pencarian
  void _filterList(String searchQuery) {
    //diupdate setiap kata-kata berubah
    _filteredDataList.clear();
    if (searchQuery.isEmpty) {
      //diupdate setiap kata-kata berubah
      _filteredDataList.addAll(_dataList);
    } else {
      _dataList.forEach((item) {
        if (item.name.toLowerCase().contains(searchQuery.toLowerCase())) {
          //diupdate setiap kata-kata berubah
          _filteredDataList.add(item);
        }
      });
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredDataList.addAll(_dataList);
  }

  List<Item> _filteredDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                _filterList(value);
              },
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredDataList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                            item: _filteredDataList[index]), // Use DetailPage
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2.0,
                    child: ListTile(
                      leading: Hero(
                        tag: 'hero-tag-${_filteredDataList[index].name}',
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(_filteredDataList[index].imagePath),
                        ),
                      ),
                      title: Text(_filteredDataList[index].name),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String name;
  final String imagePath;
  final double price;
  final String description;
  final List<String> features;
  

  Item(
    this.name,
    this.imagePath,
    this.price, {
    required this.description,
    required this.features,
  });
}

class DetailPage extends StatelessWidget {
  final Item item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    final priceformat = NumberFormat('#,###.000', 'en_US');
    final formattedPrice = priceformat.format(item.price);

    //diformat menjadi bagian bilangan bulat dan desimal yang bisa mempunyai "." atau "," lebih dari satu
    final parts = formattedPrice.split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'hero-tag-${item.name}',
                child: CircleAvatar(
                  backgroundImage: AssetImage(item.imagePath),
                  radius: 80,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                item.name,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                'Harga: $integerPart.$decimalPart',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add to Cart logic
                      final cart = Cart();
                      cart.addItem(item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to Cart'),
                        ),
                      );
                    },
                    child: const Text('Add to Cart'),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      final likes = Likes();
                      likes.toggleLike(item);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            likes.likedItems.contains(item)
                                ? 'Added to Likes'
                                : 'Removed from Likes',
                          ),
                        ),
                      );
                    },
                    icon: Icon(
                      Likes().likedItems.contains(item)
                          ? Icons.favorite
                          : Icons.favorite_border,
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deskripsi:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Fitur:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: item.features.map((feature) {
                      return Text(
                        '- $feature',
                        style: const TextStyle(fontSize: 16),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
