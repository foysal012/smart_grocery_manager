import 'package:flutter/material.dart';
import 'auth/login_screen.dart';
import 'bottom_nav_bar/bottom__nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      // home: const LoginScreen(),
      home: const BottomNavBarScreen(),
    );
  }
}
