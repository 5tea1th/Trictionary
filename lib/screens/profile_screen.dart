import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = "profile_screen";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Section
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/background_login.jpeg'), // Replace with your image path
            ),
            const SizedBox(height: 16),
            const Text(
              'John Doe', // Replace with user's namestyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'johndoe@example.com', // Replace with user's email
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 32), // Add spacing between sections

            // Account Settings Section
            const Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Edit Profile'),
              onTap: () {
                // Navigate to edit profile screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              onTap: () {
                // Navigate to change password screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {// Navigate to notifications settings screen
              },
            ),

            const SizedBox(height: 32), // Add spacing between sections

            // Other Options Section
            const Text(
              'Other Options',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help & Support'),
              onTap: () {
                // Navigate to help & support screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}