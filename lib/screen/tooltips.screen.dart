import 'package:flutter/material.dart';

class TooltipsScreen extends StatelessWidget {
  const TooltipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltips Example"),
        backgroundColor: const Color(0xFF8AA624),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Tooltip(
              message: "Ini adalah ikon informasi",
              child: Icon(Icons.info, size: 50, color: Colors.blue),
            ),
            const SizedBox(height: 20),
            Tooltip(
              message: "Tombol tambah",
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Tambah"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
