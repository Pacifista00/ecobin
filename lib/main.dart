import 'package:ecobin/screen/login.dart';
import 'package:ecobin/screen/splash_screen.dart';
import 'package:ecobin/screen/tooltips.screen.dart';
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
        '/tooltips': (context) => const TooltipsScreen(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
