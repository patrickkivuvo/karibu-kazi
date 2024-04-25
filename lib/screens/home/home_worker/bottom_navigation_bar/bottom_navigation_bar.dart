import 'package:flutter/material.dart';
import 'package:karibu_kazi/constants/color_extension.dart';
import 'package:karibu_kazi/screens/chats/chats.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/home_employer.dart';
import 'package:karibu_kazi/screens/home/home_employer/home/profile%20/profileh.dart';
import 'package:karibu_kazi/screens/home/home_employer/subscriptions/subscriptions.dart';
import 'package:karibu_kazi/screens/home/home_worker/home_worker.dart';
import 'package:karibu_kazi/screens/home/home_worker/profile%20/profileh.dart';
import 'package:karibu_kazi/screens/orders/my_orders.dart';

class CustomBottomNavigationBarWorker extends StatefulWidget {
  const CustomBottomNavigationBarWorker({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBarWorker> createState() =>
      _CustomBottomNavigationBarWorkerState();
}

class _CustomBottomNavigationBarWorkerState extends State<CustomBottomNavigationBarWorker> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeWorker(),
    const Chats(),
    const OrdersScreen(),
    const SubscriptionsScreen(),
    const ProfileWorkerH(),
  
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
            label: 'Bookings',
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
