import 'package:flutter/material.dart';

class Kecantikan extends StatefulWidget {
  @override
  State<Kecantikan> createState() => _KecantikanState();
}

class _KecantikanState extends State<Kecantikan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kecantikan'),
      ),
      body: Center(
        child: Text('Kecantikan'),
      ),
    );
  }
}
