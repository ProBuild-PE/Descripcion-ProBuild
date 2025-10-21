import 'package:flutter/material.dart';
class RegisterController {
  void goToLogin(BuildContext context) {
    Navigator.pop(context); // o Navigator.pushNamed(context, '/');
  }

  Future<bool> registerUser({
    required String email,
    required String password,
    required String nombres,
    required String apellidos,
    required String distrito,
    required String genero,
  }) async {
    // Simulación de delay y éxito (como si fuera backend)
    await Future.delayed(const Duration(seconds: 1));

    // Puedes hacer validaciones aquí si deseas
    return email.isNotEmpty && password.length >= 6;
  }
}
