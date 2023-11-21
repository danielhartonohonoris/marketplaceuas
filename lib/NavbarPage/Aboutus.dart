import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'image/account.png', // Gantilah dengan path gambar logo Anda
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'E-Commerce App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'KELOMPOK MARKETPLACE',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red.shade400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'VISI & MISI ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Memajukan sebuah karya marketplace yang kita pelajari untuk masuk kedalam dunia pekerjaan IT',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red.shade400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Email: marketplaceprojectuas@gmail.com \nPhone: +0822-1234-4321',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red.shade400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
