import 'package:flutter/material.dart';
import 'package:karibu_kazi/screens/auth_ui/welcome/welcome.dart';
import 'package:karibu_kazi/screens/home/home_worker/bottom_navigation_bar/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: media.width * 0.6,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/splash.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
