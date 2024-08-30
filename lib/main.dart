import 'package:aplikasi_makanan/navigation.dart';
import 'package:aplikasi_makanan/pages/home.dart';
import 'package:aplikasi_makanan/pages/order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const NavigationMenu(),
      initialRoute: '/order',
      routes: {
        '/home': (context) => const HomeWidget(), // Home page route
        '/order': (context) => const OrderWidget(), // Order page route
        // Add other routes here as needed
      },
    );
  }
}
