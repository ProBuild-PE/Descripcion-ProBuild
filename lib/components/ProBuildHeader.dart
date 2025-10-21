import 'package:flutter/material.dart';

class ProBuildHeader extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBackTap;
  final VoidCallback? onProfileTap;

  const ProBuildHeader({super.key, this.onBackTap, this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF8B0002), // Rojo oscuro
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text(
        'ProBuild',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackTap ?? () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed:
              onProfileTap ?? () => Navigator.pushNamed(context, '/perfil'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
