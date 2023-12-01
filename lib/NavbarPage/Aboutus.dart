import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.red.shade600,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red.shade600,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('image/account.png'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'E-Commerce App',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Exclusively Crafted by KELOMPOK MARKETPLACE',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red.shade400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red.shade600,
                    width: 2,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Our Vision & Mission',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Text(
                    'To advance the realm of IT employment through our diligently crafted marketplace project.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red.shade400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.red.shade600,
                    width: 2,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Text(
                    'Email: marketplaceprojectuas@gmail.com\nPhone: +0822-1234-4321',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red.shade400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
