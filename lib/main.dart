import 'package:flutter/material.dart';
import 'Dashboard_screen.dart'; // Dashboard'u import etmeyi unutma

void main() {
  runApp(const KeyGuardApp());
}

class KeyGuardApp extends StatelessWidget {
  const KeyGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Key Guard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const DashboardScreen(), // Ana sayfa burada başlatılır
    );
  }
}
