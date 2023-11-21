import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          NotificationItem(
            productImage: 'image/le_mineral.jpeg',
            message: 'Le-Minerale Kemasan 600ML',
            timestamp: '2 Jam lalu',
          ),
          SizedBox(height: 16),
          NotificationItem(
            productImage: 'image/hp.jpg',
            message: 'Handphone ',
            timestamp: '3 Jam lalu',
          ),
          SizedBox(height: 16),
          NotificationItem(
            productImage: 'image/aqua.jpg',
            message: 'Aqua Botol Kemasan 600ML',
            timestamp: '1 Hari lalu',
          ),
          // Add more NotificationItem widgets as needed
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String productImage;
  final String message;
  final String timestamp;

  const NotificationItem({
    required this.productImage,
    required this.message,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(productImage),
        ),
        title: Text(message),
        subtitle: Text(timestamp),
        onTap: () {},
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationsPage(),
  ));
}
