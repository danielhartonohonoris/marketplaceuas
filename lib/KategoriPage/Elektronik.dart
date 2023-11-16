import 'package:flutter/material.dart';

class Elektronik extends StatefulWidget {
  @override
  State<Elektronik> createState() => _ElektronikState();
}

class _ElektronikState extends State<Elektronik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elektronik'),
      ),
      body: Center(
        child: Text('Elektronik'),
      ),
    );
  }
}