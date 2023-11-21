import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("image/account.png"),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Unknown',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'email@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Fungsi untuk mengedit profil
              },
              child: Text('Edit Profil'),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Jakarta'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('0822-1234-3412'),
            ),
            SizedBox(height: 16),
            Text(
              'Skills',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSkillWidget(Icons.code, 'Programming'),
                _buildSkillWidget(Icons.language, 'Languages'),
                _buildSkillWidget(Icons.devices, 'Tech Gadgets'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'About Me',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Passionate Flutter developer with a love for creating beautiful and functional mobile applications.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            // Tambahkan widget atau fungsi tambahan sesuai kebutuhan
          ],
        ),
      ),
    );
  }

  Widget _buildSkillWidget(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
