import 'package:flutter/material.dart';

class UbahPasswordPage extends StatelessWidget {
  const UbahPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oldPassController = TextEditingController();
    final TextEditingController newPassController = TextEditingController();
    final TextEditingController confirmPassController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Password"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              controller: oldPassController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password Lama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: newPassController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password Baru",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: confirmPassController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Konfirmasi Password Baru",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                // TODO: Validasi & simpan password baru
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF98CD00),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Simpan Password"),
            ),
          ],
        ),
      ),
    );
  }
}
