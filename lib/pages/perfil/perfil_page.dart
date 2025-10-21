// pages/perfil/perfil_page.dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../components/header_back.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  File? _imageFile;

  final _passwordController = TextEditingController(text: 'tulokita123');
  final _districtController = TextEditingController(text: 'Breña');
  final _nameController = TextEditingController(text: 'Karla Pattern');
  final _lastNameController = TextEditingController(text: 'Alvert Flower');

  bool _obscurePassword = true;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label, {
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword && _obscurePassword,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              )
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HeaderBack(title: 'Mi Perfil'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    (_imageFile != null
                            ? FileImage(_imageFile!)
                            : const AssetImage('assets/defaultprofile.png'))
                        as ImageProvider<Object>,
              ),
            ),
            const SizedBox(height: 20),
            _buildTextField(
              _passwordController,
              'Contraseña',
              isPassword: true,
            ),
            const SizedBox(height: 12),
            _buildTextField(_districtController, 'Distrito'),
            const SizedBox(height: 12),
            _buildTextField(_nameController, 'Nombres'),
            const SizedBox(height: 12),
            _buildTextField(_lastNameController, 'Apellidos'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para "Actualizar"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8B0002),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                elevation: 4, // Sombra estilo M3 Elevation Light 4
              ),
              child: const Text('ACTUALIZAR'),
            ),
          ],
        ),
      ),
    );
  }
}
