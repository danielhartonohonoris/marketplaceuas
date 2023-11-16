import 'package:flutter/material.dart';

class Pakaian extends StatefulWidget {
  @override
  State<Pakaian> createState() => _PakaianState();
}

class _PakaianState extends State<Pakaian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pakaian'),
      ),
      body: Center(
        child: Text('Pakaian'),
      ),
    );
  }
}