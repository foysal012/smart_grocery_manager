import 'package:flutter/material.dart';
import 'package:smart_grocery_manager/bottom_nav_bar/data/data_visualization_screen.dart';
import 'package:smart_grocery_manager/bottom_nav_bar/home/home_screen.dart';
import 'package:smart_grocery_manager/bottom_nav_bar/more/more_screen.dart';
import 'package:smart_grocery_manager/bottom_nav_bar/sales/sales_history_screen.dart';
import 'package:smart_grocery_manager/bottom_nav_bar/stock/stock_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> screen = [
    HomeScreen(),
    StockScreen(),
    SalesHistoryScreen(),
    DataVisualizationScreen(),
    MoreScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screen[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          selectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A73E8)
          ),
          selectedItemColor: Color(0xff1A73E8),
          unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xff94A3B8)
          ),
          unselectedItemColor: Color(0xff94A3B8),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.satellite_outlined),
                label: 'STOCK'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sd_card_alert_sharp),
                label: 'SALES'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_thresholding),
                label: 'DATA'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'MORE'
            )
          ]
      ),
    );
  }
}
