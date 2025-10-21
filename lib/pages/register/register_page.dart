import 'package:flutter/material.dart';
import 'register_page_controller.dart';
import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _controller = RegisterController();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nombresController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _distritoController = TextEditingController();

  String _genero = "Masculino";
  String _errorMessage = '';

  void _handleRegister() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final nombres = _nombresController.text.trim();
    final apellidos = _apellidosController.text.trim();
    final distrito = _distritoController.text.trim();

    final success = await _controller.registerUser(
      email: email,
      password: password,
      nombres: nombres,
      apellidos: apellidos,
      distrito: distrito,
      genero: _genero,
    );

    setState(() {
      _errorMessage = success ? '' : 'Verifica los campos';
    });

    if (success) {
      Navigator.pop(context); // Regresa al login
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuario registrado con éxito')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const rojoOscuro = Color(0xFF8B0002);
    const grisClaro = Color(0xFFB4B4B4);
    const grisOscuro = Color(0xFF656565);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, rojoOscuro],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 150,
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
                const SizedBox(height: 30),
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
                      _buildTextField("Correo electrónico", _emailController),
                      const SizedBox(height: 10),
                      _buildTextField(
                        "Contraseña",
                        _passwordController,
                        isPassword: true,
                      ),
                      const SizedBox(height: 10),
                      _buildTextField("Nombres", _nombresController),
                      const SizedBox(height: 10),
                      _buildTextField("Apellidos", _apellidosController),
                      const SizedBox(height: 10),
                      _buildTextField("Distrito", _distritoController),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sexo:",
                          style: TextStyle(color: grisOscuro),
                        ),
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: "Masculino",
                            groupValue: _genero,
                            onChanged: (value) =>
                                setState(() => _genero = value!),
                          ),
                          const Text("Masculino"),
                          Radio<String>(
                            value: "Femenino",
                            groupValue: _genero,
                            onChanged: (value) =>
                                setState(() => _genero = value!),
                          ),
                          const Text("Femenino"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: _handleRegister,
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
                        child: const Text("Registrarte"),
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
                  onPressed: () => _controller.goToLogin(context),
                  child: const Text.rich(
                    TextSpan(
                      text: "¿Ya tienes una cuenta? ",
                      style: TextStyle(color: grisClaro),
                      children: [
                        TextSpan(
                          text: "Inicia sesión aquí",
                          style: TextStyle(color: Colors.white),
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

  Widget _buildTextField(
    String hint,
    TextEditingController controller, {
    bool isPassword = false,
  }) {
    const grisClaro = Color(0xFFB4B4B4);
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: grisClaro),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: grisClaro.withOpacity(0.2),
      ),
    );
  }
}
