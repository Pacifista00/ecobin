import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, String>> onboardData = [
    {
      "illustration": 'assets/images/illustration/illust1.png',
      "title": "Pantau Tempat Sampah",
      "description":
          "Cek kapasitas tempat sampah di sekolah secara real-time lewat aplikasi.",
    },
    {
      "illustration": 'assets/images/illustration/illust1.png',
      "title": "Minta Petugas Kebersihan",
      "description":
          "Jika tempat sampah penuh, minta petugas kebersihan untuk mengosongkannya.",
    },
    {
      "illustration": 'assets/images/illustration/illust1.png',
      "title": "Lingkungan Bersih, Hati Senang",
      "description":
          "Bersama-sama jaga kebersihan lingkungan sekolah demi kenyamanan kita semua.",
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPressed() {
    if (_currentPage < onboardData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    } else {
      // Navigasi ke halaman lain setelah konten terakhir
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Decorative elements
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/shape/shape1.png', width: 180),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/shape/shape2.png', width: 320),
            ),

            // Main content using PageView
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboardData.length,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 180),
                            Image.asset(
                              onboardData[index]["illustration"]!,
                              height: 300,
                            ),
                            const SizedBox(height: 32),
                            Text(
                              onboardData[index]["title"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              onboardData[index]["description"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Bottom navigation (Skip & Next)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Skip button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                      ),

                      // Next button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF98CD00),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                        onPressed: _onNextPressed,
                        child: Text(
                          _currentPage == onboardData.length - 1
                              ? "Done"
                              : "Next",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
