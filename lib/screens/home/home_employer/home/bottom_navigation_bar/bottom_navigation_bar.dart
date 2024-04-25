import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/chats/chats.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/home_employer.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profile%20/profileh.dart';
import 'package:karibu_kazi/screens/home/home_employer/subscriptions/subscriptions.dart';
import 'package:karibu_kazi/screens/orders/my_orders.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeEmployer(),
    const Chats(),
    const OrdersScreen(),
    const SubscriptionsScreen(),
    const ProfileScreenH(),
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: TColor.placeholder,
        unselectedItemColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/bhome.png',
              height: 30,
              width: 30,
            ),
            label: 'Home',
            activeIcon: Image.asset(
              'assets/img/bhome.png',
              height: 30,
              width: 30,
              color: TColor.placeholder,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/bchats.png',
              height: 30,
              width: 30,
            ),
            label: 'Chats',
            activeIcon: Image.asset(
              'assets/img/bchats.png',
              height: 30,
              width: 30,
               color: TColor.placeholder,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/bjobs.png',
              height: 30,
              width: 30,
            ),
            label: 'My Orders',
            activeIcon: Image.asset(
              'assets/img/bjobs.png',
              height: 30,
              width: 30,
               color: TColor.placeholder,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/shield.png',
              height: 26,
              width: 26,
            ),
            label: 'Subscriptions',
            activeIcon: Image.asset(
              'assets/img/shield.png',
              height: 28,
              width: 28,
               
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/buser.png',
              height: 30,
              width: 30,
            ),
            label: 'Profile',
            activeIcon: Image.asset(
              'assets/img/buser.png',
              height: 30,
              width: 30,
               color: TColor.placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
