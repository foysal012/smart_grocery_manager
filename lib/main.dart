import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/screen/bottom_nav_bar/bottom__nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Grocery Manager',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const LoginScreen(),
      home: const BottomNavBarScreen(),
    );
  }
}
