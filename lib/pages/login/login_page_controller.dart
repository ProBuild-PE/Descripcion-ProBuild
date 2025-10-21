import 'package:flutter/material.dart';

class LoginController {
  final _mockUser = {
    "usuario": "user@user.com",
    "contrasena": "user123",
  };

  /// Redirige a la página de registro
  void goToSignUp(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

  /// Lógica de autenticación simulada (mock)
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return email == _mockUser["usuario"] && password == _mockUser["contrasena"];
  }

  /// Si el login es exitoso, navega a /home
  Future<void> handleLogin({
    required BuildContext context,
    required String email,
    required String password,
    required void Function(String? errorMessage) onResult,
  }) async {
    final success = await login(email, password);

    if (success) {
      Navigator.pushNamed(context, '/home');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('¡Bienvenido $email!')),
      );
      onResult(null); // sin error
    } else {
      onResult('Correo o contraseña incorrecta');
    }
  }
}
