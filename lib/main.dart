import 'package:flutter/material.dart';
import 'package:food_app_ui/modules/homescreen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true, 
      title: 'Pizza App',
      home: PizzaDetailsScreen(), 
    );
  }
}