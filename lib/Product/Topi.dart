import 'package:flutter/material.dart';
import 'package:test4/NavbarPage/cart.dart';
import 'package:test4/NavbarPage/likes.dart';
import 'package:test4/searchProduct/searchpage.dart';

class Topi extends StatefulWidget {
  @override
  _TopiState createState() => _TopiState();
}

class _TopiState extends State<Topi> {
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
                backgroundImage: AssetImage('image/topi.jpeg'),
                radius: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Topi',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Text(
                'Harga: 20.000',
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
                          'Topi',
                          'image/topi.jpeg',
                          20.0,
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
                            'Topi',
                            'image/topi.jpeg',
                            20.0,
                            description: 'Description here',
                            features: ['Feature 1', 'Feature 2'],
                          ),
                        );
                      } else {
                        _likes.toggleLike(
                          Item(
                            'Topi',
                            'image/topi.jpeg',
                            20.0,
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
                'Topi trendy untuk gaya kasual yang menarik perhatian',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              
              //FItur
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
                  _buildFeatureItem('- Desain bagus'),
                  _buildFeatureItem('- Nyaman dipakai'),
                  _buildFeatureItem('- Cocok untuk berbagai kesempatan'),
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