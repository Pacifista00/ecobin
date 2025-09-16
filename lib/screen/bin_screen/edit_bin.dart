import 'package:flutter/material.dart';

class EditBinPage extends StatelessWidget {
  final String name;
  final String location;

  const EditBinPage({super.key, required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController(
      text: name,
    );
    final TextEditingController locationController = TextEditingController(
      text: location,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Tong Sampah"),
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
                labelText: "Nama Tong Sampah",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: const InputDecoration(
                labelText: "Lokasi",
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
                    content: Text("Perubahan tong sampah berhasil disimpan!"),
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
