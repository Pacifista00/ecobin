import 'package:ecobin/screen/user_screen/add_user.dart';
import 'package:ecobin/screen/user_screen/edit_user.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  void _showDeleteConfirmation(BuildContext context, String userName) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text("Konfirmasi Hapus"),
          content: Text("Apakah kamu yakin ingin menghapus $userName?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx); // tutup modal
              },
              child: const Text("Batal"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(ctx); // tutup modal
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("$userName berhasil dihapus!")),
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
    // Contoh data user dummy
    final List<Map<String, String>> users = [
      {"name": "Adam Samudera", "email": "adam@example.com"},
      {"name": "Rina Putri", "email": "rina@example.com"},
      {"name": "Budi Santoso", "email": "budi@example.com"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Kelola User",
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
        itemCount: users.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFF98CD00),
                child: Text(
                  user["name"]![0], // ambil huruf depan nama
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                user["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(user["email"]!),
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
                              (context) => EditUserPage(
                                name: user["name"]!,
                                email: user["email"]!,
                              ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _showDeleteConfirmation(context, user["name"]!);
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
            MaterialPageRoute(builder: (context) => const AddUserPage()),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
