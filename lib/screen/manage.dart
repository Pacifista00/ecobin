import 'package:flutter/material.dart';

class ManagePage extends StatelessWidget {
  const ManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            decoration: const BoxDecoration(
              color: Color(0xFF98CD00),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Center(
              child: Text(
                "Kelola",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Menu
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                // Kelola User
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(Icons.people, color: Color(0xFF98CD00)),
                    title: const Text(
                      "Kelola User",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Tambah, edit, dan hapus pengguna.",
                      style: TextStyle(color: Colors.black54),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/user-management',
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),

                // Kelola Tong Sampah
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(
                      Icons.delete_outline,
                      color: Color(0xFF98CD00),
                    ),
                    title: const Text(
                      "Kelola Tong Sampah",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Atur data dan penempatan tong sampah.",
                      style: TextStyle(color: Colors.black54),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/bin-management',
                      );
                    },
                  ),
                ),
                const SizedBox(height: 12),

                // Riwayat Pengosongan Sampah
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(
                      Icons.history,
                      color: Color(0xFF98CD00),
                    ),
                    title: const Text(
                      "Riwayat Pengosongan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Lihat riwayat pengosongan tong sampah.",
                      style: TextStyle(color: Colors.black54),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/history');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
