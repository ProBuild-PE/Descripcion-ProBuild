import 'package:flutter/material.dart';
import 'login_page_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _controller = LoginController();

  String _errorMessage = '';

  void _attemptLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    _controller.handleLogin(
      context: context,
      email: email,
      password: password,
      onResult: (error) {
        setState(() {
          _errorMessage = error ?? '';
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color rojoOscuro = Color(0xFF8B0002);
    const Color grisClaro = Color(0xFFB4B4B4);
    const Color grisOscuro = Color(0xFF656565);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, rojoOscuro],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const Text(
                  "ProBuild",
                  style: TextStyle(
                    color: rojoOscuro,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Correo electrónico",
                          hintStyle: const TextStyle(color: grisClaro),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: grisClaro.withOpacity(0.2),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Contraseña",
                          hintStyle: const TextStyle(color: grisClaro),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: grisClaro.withOpacity(0.2),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _attemptLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: rojoOscuro,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text("Iniciar sesión"),
                      ),
                      if (_errorMessage.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(
                            _errorMessage,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => _controller.goToSignUp(context),
                  child: const Text.rich(
                    TextSpan(
                      text: "¿No tienes una cuenta? ",
                      style: TextStyle(color: grisClaro),
                      children: [
                        TextSpan(
                          text: "Regístrate aquí",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text("2025", style: TextStyle(color: grisOscuro)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
