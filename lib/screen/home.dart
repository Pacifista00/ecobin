import 'package:ecobin/screen/account.dart';
import 'package:ecobin/screen/history.dart';
import 'package:ecobin/screen/manage.dart';
import 'package:ecobin/screen/notification.dart';
import 'package:flutter/material.dart';
import 'package:ecobin/widget/trashbin.dart';
import 'package:ecobin/widget/navbar.dart'; // Impor widget navbar

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Tambahkan state untuk indeks navbar

  final List<Widget> _pages = [
    _buildMonitoringPage(), // Home
    const AccountPage(), // Akun
    const NotificationPage(),
    const ManagePage(),
  ];

  static Widget _buildMonitoringPage() {
    // Data unik untuk setiap tong sampah
    final Map<String, dynamic> bin1OrganicData = {
      'fillPercentage': 100,
      'binName': 'Tong Sampah A (Organik)',
      'status': 'Tong sampah penuh. Bersihkan segera!',
    };
    final Map<String, dynamic> bin1AnorganicData = {
      'fillPercentage': 75,
      'binName': 'Tong Sampah A (Anorganik)',
      'status': 'Kapasitas 75%.',
    };

    final Map<String, dynamic> bin2OrganicData = {
      'fillPercentage': 50,
      'binName': 'Tong Sampah B (Organik)',
      'status': 'Kapasitas 50%.',
    };
    final Map<String, dynamic> bin2AnorganicData = {
      'fillPercentage': 20,
      'binName': 'Tong Sampah B (Anorganik)',
      'status': 'Kapasitas 20%.',
    };

    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset('assets/images/shape/shape6.png', width: 110),
        ),
        Positioned(
          top: 20,
          right: 0,
          child: Image.asset('assets/images/shape/shape7.png', width: 380),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 72, 24, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Halo, Adam!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Semoga harimu menyenangkan",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Monitoring Tempat Sampah",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        children: [
                          TrashBinCard(
                            organicData: bin1OrganicData,
                            anorganicData: bin1AnorganicData,
                          ),
                          const SizedBox(height: 16),
                          TrashBinCard(
                            organicData: bin2OrganicData,
                            anorganicData: bin2AnorganicData,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF98CD00),
      body: SafeArea(
        child: _pages[_currentIndex], // Menampilkan halaman yang sesuai
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
