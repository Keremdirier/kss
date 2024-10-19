import 'package:flutter/material.dart';
import 'add_password_screen.dart'; // Yeni sayfayı import etmeyi unutma

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Guard Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Password Vault',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildPasswordItem('Email Account', 'email@example.com'),
                  _buildPasswordItem('Bank Account', 'bank@example.com'),
                  _buildPasswordItem('Social Media', 'social@example.com'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {
                // Burada yeni şifre ekleme sayfasına geçiş yapacağız
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPasswordScreen()),
                );
              },
              child: const Icon(Icons.add),
              tooltip: 'Add New Password',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordItem(String title, String username) {
    return ListTile(
      title: Text(title),
      subtitle: Text(username),
      trailing: const Icon(Icons.visibility),
      onTap: () {
        // Şifreyi gösterme işlemi
      },
    );
  }
}
