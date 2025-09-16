import 'package:ecobin/screen/bin_screen/add_bin.dart';
import 'package:ecobin/screen/bin_screen/edit_bin.dart';
import 'package:flutter/material.dart';

class BinPage extends StatelessWidget {
  const BinPage({super.key});

  void _showDeleteConfirmation(BuildContext context, String binName) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text("Konfirmasi Hapus"),
          content: Text("Apakah kamu yakin ingin menghapus $binName?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text("Batal"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(ctx);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("$binName berhasil dihapus!")),
                );
              },
              child: const Text("Hapus"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Contoh data dummy tong sampah
    final List<Map<String, String>> bins = [
      {"name": "Tong Sampah Organik", "location": "Depan Kantor"},
      {"name": "Tong Sampah Anorganik", "location": "Belakang Gedung"},
      {"name": "Tong Sampah B3", "location": "Gudang"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Kelola Tong Sampah",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF98CD00),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: bins.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final bin = bins[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: ListTile(
              leading: const Icon(
                Icons.delete_outline,
                color: Color(0xFF98CD00),
              ),
              title: Text(
                bin["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Lokasi: ${bin["location"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => EditBinPage(
                                name: bin["name"]!,
                                location: bin["location"]!,
                              ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _showDeleteConfirmation(context, bin["name"]!);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF98CD00),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddBinPage()),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
