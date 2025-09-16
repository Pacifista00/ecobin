import 'package:flutter/material.dart';

class EditUserPage extends StatelessWidget {
  final String name;
  final String email;

  const EditUserPage({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController(
      text: name,
    );
    final TextEditingController emailController = TextEditingController(
      text: email,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit User"),
        backgroundColor: const Color(0xFF98CD00),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF98CD00),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Perubahan user berhasil disimpan!"),
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text("Simpan Perubahan"),
            ),
          ],
        ),
      ),
    );
  }
}
