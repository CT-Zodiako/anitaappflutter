import 'dart:async';
import 'package:anita/Screens/agendarPage.dart';
import 'package:anita/Screens/busquedaPage.dart';
import 'package:anita/Screens/categoriasPage.dart';
import 'package:anita/Screens/citaPage.dart';
import 'package:anita/Screens/favoritoPage.dart';
import 'package:anita/Screens/screens.dart';
import 'package:anita/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anita',
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (_) => SplashScreen(),
        'login': (_) => LoginScreen(),
        'registrar': (_) => RegitrarScreen(),
        'recupcontra': (_) => OlvidarContra(),
        'principal': (_) => Principal(),
        'busqueda': (_) => BusquedaPage(),
        'agendar': (_) => AgendarPage(),
        'cita': (_) => CitaPage(),
        'favorito': (_) => FavoritosPage(),
        'categoria': (_) => CategoriasPage(),
      },
    );
  }
}
