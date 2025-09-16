import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Decorative elements (assuming these are similar to the onboard screen)
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
                  // Title "Login"
                  const Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Greeting and description
                  // const Text(
                  //   "Halo, Ayo Mulai!",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     fontWeight: FontWeight.w700,
                  //     color: Colors.black87,
                  //   ),
                  // ),
                  const SizedBox(height: 8),
                  const Text(
                    "Masuk dan temukan cara baru menjaga kebersihan dengan tempat sampah pintar.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Email input field
                  // Email input field
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
                        hintText: "Username atau Email", // Placeholder text
                        prefixIcon: Icon(Icons.person), // Icon untuk username
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
                        hintText: "Password", // Placeholder text
                        prefixIcon: Icon(Icons.lock), // Icon untuk password
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Forgot Password text
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password tap
                      },
                      child: const Text(
                        "Lupa Password?",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Login button
                  ElevatedButton(
                    onPressed: () {
                      // Pindah ke /home dan hapus halaman login dari stack
                      Navigator.pushReplacementNamed(context, '/home');
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
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      },
                      child: const Text(
                        "Belum mempunyai akun? Daftar",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Expanded(child: Divider(color: Colors.black26)),
                      const SizedBox(width: 10),
                      Text(
                        "atau",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(child: Divider(color: Colors.black26)),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Alternative login button (e.g., Google or other)
                  ElevatedButton(
                    onPressed: () {
                      // Handle alternative login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF0F0F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Google", // Placeholder text
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
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
