import 'package:flutter/material.dart';

class MakananMinuman extends StatefulWidget {
  @override
  State<MakananMinuman> createState() => _MakananMinumanState();
}

class _MakananMinumanState extends State<MakananMinuman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan & Minuman'),
      ),
      body: Center(
        child: Text('Makanan & Minuman'),
      ),
    );
  }
}
