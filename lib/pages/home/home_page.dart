import 'package:flutter/material.dart';
import '../../components/ProBuildBottomNavBar.dart';
import '../../components/ProBuildHeader.dart';
import '../buildsguardados/buildsguardados_page.dart';
import '../buscarbuild/buscarbuild_page.dart';
import '../tusbuilds/tusbuilds.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center( // Página 0: Home
      child: Text(
        'Estoy en el HomePage',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF8B0002),
        ),
      ),
    ),
    BuildsguardadosPage(), // Página 1
    BuscarbuildPage(),     // Página 2
    TusbuildsPage(),       // Página 3
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProBuildHeader(),
      body: _pages[_currentIndex],
      bottomNavigationBar: ProBuildBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
