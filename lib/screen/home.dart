import 'package:ecobin/screen/account.dart';
import 'package:ecobin/screen/manage.dart';
import 'package:ecobin/screen/notification.dart';
import 'package:flutter/material.dart';
import 'package:ecobin/widget/trashbin.dart';
import 'package:ecobin/widget/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static final List<Map<String, dynamic>> _trashBlocks = [
    {
      'locationName': 'Tong Sampah Blok A',
      'locationImage': 'assets/images/logowhite.png',
      'locationDescription':
          'Tong sampah ini terletak di area taman depan, dekat pintu masuk utama.',
      'organic': {'fillPercentage': 100, 'status': 'Penuh'},
      'anorganic': {'fillPercentage': 75, 'status': 'Hampir Penuh'},
    },
    {
      'locationName': 'Tong Sampah Blok B',
      'locationImage': 'assets/images/logowhite.png',
      'locationDescription':
          'Tong sampah ini terletak di samping gedung kantin.',
      'organic': {'fillPercentage': 50, 'status': 'Kapasitas 50%'},
      'anorganic': {'fillPercentage': 20, 'status': 'Kapasitas 20%'},
    },
  ];

  final List<Widget> _pages = [
    _buildMonitoringPage(_trashBlocks),
    const AccountPage(),
    const NotificationPage(),
    const ManagePage(),
  ];

  static Widget _buildMonitoringPage(List<Map<String, dynamic>> trashBlocks) {
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
                      child: ListView.builder(
                        itemCount: trashBlocks.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: TrashBinCard(blockData: trashBlocks[index]),
                          );
                        },
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
      body: SafeArea(child: _pages[_currentIndex]),
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
