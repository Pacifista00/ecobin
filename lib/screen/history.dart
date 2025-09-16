import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data dummy
    final List<Map<String, String>> riwayat = [
      {
        "tanggal": "14 September 2025",
        "jam": "08:30",
        "keterangan": "Pengosongan berhasil dilakukan.",
      },
      {
        "tanggal": "12 September 2025",
        "jam": "09:15",
        "keterangan": "Pengosongan berhasil dilakukan.",
      },
      {
        "tanggal": "10 September 2025",
        "jam": "07:45",
        "keterangan": "Pengosongan berhasil dilakukan.",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Custom Header
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
                "Riwayat Pengosongan Sampah",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // List Riwayat
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 12),
              itemCount: riwayat.length,
              itemBuilder: (context, index) {
                final item = riwayat[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(Icons.delete, color: Color(0xFF98CD00)),
                    title: Text(
                      item["tanggal"]!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("${item["jam"]} • ${item["keterangan"]}"),
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
