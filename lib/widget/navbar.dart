// File: lib/widgets/bottom_navbar.dart

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0, // Mengatur tinggi navbar
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF98CD00),
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          // Tombol Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: 'Home',
          ),
          // Tombol Akun
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          // Tombol Notifikasi (ubah dari Riwayat)
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
          // Tombol Kelola
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Kelola'),
          // Tombol Logout
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}
