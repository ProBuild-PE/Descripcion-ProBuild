import 'package:flutter/material.dart';

class TusbuildsPage extends StatelessWidget {
  const TusbuildsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Estoy en el TusbuildsPage',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8B0002),
        ),
      ),
    );
  }
}
