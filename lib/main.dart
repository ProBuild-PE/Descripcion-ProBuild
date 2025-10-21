
import 'package:flutter/material.dart';
import 'configs/theme.dart';
import 'pages/login/login_page.dart';
import 'pages/register/register_page.dart';
import 'pages/home/home_page.dart';
import 'pages/tusbuilds/tusbuilds.dart';
import 'pages/buscarbuild/buscarbuild_page.dart';
import 'pages/buildsguardados/buildsguardados_page.dart';
import 'pages/perfil/perfil_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          AppTheme.lightTheme(), // Usa el tema claro definido en app_theme.dart
      darkTheme:
          AppTheme.darkTheme(), // Usa el tema oscuro definido en app_theme.dart
      //home: HomePage(), // Tu página principal
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/tusbuilds': (context) => TusbuildsPage(),
        '/buscarbuild': (context) => BuscarbuildPage(),
        '/buildsguardados': (context) => BuildsguardadosPage(),
        '/perfil': (context) => PerfilPage(),
      },
    );
  }
}
