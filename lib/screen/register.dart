import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Decorative shapes
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/images/shape/shape3.png', width: 150),
            ),
            Positioned(
              top: 300,
              left: 0,
              child: Image.asset('assets/images/shape/shape4.png', width: 80),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/shape/shape5.png', width: 350),
            ),

            // Main content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 120),

                  // Greeting and description
                  const Text(
                    "Yuk, Buat Akun!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Daftarkan akunmu untuk mulai memantau dan menjaga kebersihan lingkungan sekolah.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Username input field
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Email input field
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Password input field
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        hintText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Register button
                  ElevatedButton(
                    onPressed: () {
                      // Action for register button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF98CD00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // "Sudah punya akun? Login" text
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          '/login',
                        ); // Go back to the login page
                      },
                      child: const Text(
                        "Sudah punya akun? Login",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
