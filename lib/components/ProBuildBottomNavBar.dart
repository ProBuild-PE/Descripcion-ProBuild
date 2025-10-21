import 'package:flutter/material.dart';

class ProBuildBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const ProBuildBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: const Color(0xFF8B0002),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFFB4B4B4),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ],
    );
  }
}
