import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Replace with your image URL
                ),
                SizedBox(height: 8),
                Text(
                  'Jannie Regel',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text('214 rates'),
                  ],
                ),
                Row(
                  children: [
                    Text('85% trust'),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRow('Gender:', 'Female'),
                  _buildRow('Date of birth:', '23/02/1987'),
                  _buildRow('Phone number:', '263 281 480'),
                  const Divider(),
                  _buildRow('Blood type:', 'AB'),
                  _buildRow('Điếc/ Khiếm thính:', 'Enabled'),
                  _buildRow('Silent:', 'Disabled'),
                  _buildRow('Blind:', 'Disabled'),
                  const Divider(),
                  _buildRow('Emergency:', '8/11'),
                  _buildRow('Helps:', '4/5'),
                  _buildRow('Number report:', '5/9'),
                  const Divider(),
                  _buildRow('Language:', 'Tiếng Việt'),
                  _buildRow('Get notifications:', 'Enabled'),
                  _buildRow('Send to family:', 'Disabled'),
                  _buildRow('Range get notifications:', '5 km'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: ProfileCard()));
