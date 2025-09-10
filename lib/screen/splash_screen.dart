import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Tunggu 5 detik lalu pindah ke TooltipsScreen
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/onboard');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF98CD00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo aplikasi
            Image.asset(
              'assets/images/logowhite.png', // ganti dengan logo kamu
              width: 86,
              height: 86,
            ),
            const SizedBox(height: 36),

            // Loading animasi unik
            const SpinKitWave(color: Colors.white, size: 30.0),
          ],
        ),
      ),
    );
  }
}
