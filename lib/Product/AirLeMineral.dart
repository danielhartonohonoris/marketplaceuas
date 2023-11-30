import 'package:flutter/material.dart';
import 'package:test4/NavbarPage/cart.dart';
import 'package:test4/NavbarPage/likes.dart';
import 'package:test4/searchProduct/searchpage.dart';

class LeMineral extends StatefulWidget {
  @override
  _LeMineralState createState() => _LeMineralState();
}

class _LeMineralState extends State<LeMineral> {
  bool isLiked = false;
  final Cart _cart = Cart();
  final Likes _likes = Likes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        backgroundColor: Colors.red.shade600,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('image/le_mineral.jpeg'),
                radius: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Le Mineral',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                'Harga: 4.000',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _cart.addItem(
                        Item(
                          'Le Mineral',
                          'image/le_mineral.jpeg',
                          4.0,
                          description: 'Description here',
                          features: ['Feature 1', 'Feature 2'],
                        ),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to Cart'),
                        ),
                      );
                    },
                    child: const Text('Add to Cart'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red.shade600),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                      if (isLiked) {
                        _likes.toggleLike(
                          Item(
                            'Le Mineral',
                            'image/le_mineral.jpeg',
                            4.0,
                            description: 'Description here',
                            features: ['Feature 1', 'Feature 2'],
                          ),
                        );
                      } else {
                        _likes.toggleLike(
                          Item(
                            'Le Mineral',
                            'image/le_mineral.jpeg',
                            2000.0,
                            description: 'Description here',
                            features: ['Feature 1', 'Feature 2'],
                          ),
                        );
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            isLiked ? 'Added to Likes' : 'Removed from Likes',
                          ),
                        ),
                      );
                    },
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                    ),
                    color: Colors.red.shade600,
                  ),
                ],
              ),
              //Deskripsi
              const Align(
                alignment: Alignment(-1,0),
                child: Text(
                'Deskripsi',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Air mineral Le Mineral dengan kandungan mineral yang baik untuk tubuh.',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              
              //Fitur
              const Align(
                alignment: Alignment(-1,0),
                child: Text(
                'Fitur:',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeatureItem('- Kaya akan mineral'),
                  _buildFeatureItem('- Meningkatkan hidrasi'),
                  _buildFeatureItem('- Cocok untuk gaya hidup aktif'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [

          const SizedBox(width: 8),
          Text(feature, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }