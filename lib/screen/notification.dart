// File: lib/screen/notification_page.dart

import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data notifikasi (dummy)
    final List<Map<String, String>> notifications = [
      {
        "title": "Pengosongan Tong Berhasil",
        "subtitle": "Tong sampah di Area A sudah dikosongkan.",
        "time": "2 jam lalu",
      },
      {
        "title": "Notifikasi Jadwal",
        "subtitle": "Jadwal pengosongan berikutnya besok pukul 08.00.",
        "time": "Kemarin",
      },
      {
        "title": "Sampah Menumpuk",
        "subtitle": "Tong sampah di Area B hampir penuh, segera dikosongkan.",
        "time": "2 hari lalu",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // Header
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF98CD00),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Notifikasi",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Daftar Notifikasi
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notif = notifications[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF98CD00).withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xFF98CD00),
                      ),
                    ),
                    title: Text(
                      notif["title"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      notif["subtitle"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    trailing: Text(
                      notif["time"]!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
