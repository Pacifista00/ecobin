import 'package:ecobin/screen/bin_screen/bin_management.dart';
import 'package:ecobin/screen/history.dart';
import 'package:ecobin/screen/home.dart';
import 'package:ecobin/screen/login.dart';
import 'package:ecobin/screen/register.dart';
import 'package:ecobin/screen/splash_screen.dart';
import 'package:ecobin/screen/onboard.screen.dart';
import 'package:ecobin/screen/user_screen/user_management.dart';
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
      title: 'Ecobin',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboard': (context) => const OnboardScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/user-management': (context) => const UserPage(),
        '/bin-management': (context) => const BinPage(),
        '/history': (context) => const HistoryPage(),
      },
    );
  }
}
