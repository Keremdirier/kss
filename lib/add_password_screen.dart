import 'package:flutter/material.dart';

class AddPasswordScreen extends StatelessWidget {
  const AddPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Kaydetme işlemi (veritabanı veya API'ye kaydetme)
                Navigator.pop(context); // Kaydedildikten sonra ana sayfaya geri dön
              },
              child: const Text('Save Password'),
            ),
          ],
        ),
      ),
    );
  }
}
