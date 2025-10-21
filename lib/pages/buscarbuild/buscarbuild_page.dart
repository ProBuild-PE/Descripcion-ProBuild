import 'package:flutter/material.dart';

class BuscarbuildPage extends StatelessWidget {
  const BuscarbuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Estoy en el BuscarbuildPage',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8B0002),
        ),
      ),
    );
  }
}
