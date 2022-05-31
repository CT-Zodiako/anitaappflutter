import 'dart:async';
import 'package:anita/Screens/agendarPage.dart';
import 'package:anita/Screens/blusafavoPage.dart';
import 'package:anita/Screens/busofavoPage.dart';
import 'package:anita/Screens/busosPage.dart';
import 'package:anita/Screens/busovistaPage.dart';
import 'package:anita/Screens/busquedaPage.dart';
import 'package:anita/Screens/catePage.dart';
import 'package:anita/Screens/cateblusasPage.dart';
import 'package:anita/Screens/citaPage.dart';
import 'package:anita/Screens/contactoPage.dart';
import 'package:anita/Screens/favoritoPage.dart';
import 'package:anita/Screens/pantalonfavoPage.dart';
import 'package:anita/Screens/pantalonvistaPage.dart';
import 'package:anita/Screens/screens.dart';
import 'package:anita/Screens/services/auth_service.dart';
import 'package:anita/Screens/somosPage.dart';
import 'package:anita/Screens/vestidofavoPage.dart';
import 'package:anita/Screens/vestidovistaPage.dart';
import 'package:anita/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:anita/Screens/vistaPage.dart';
import 'package:anita/Screens/quienPage.dart';
import 'package:anita/Screens/vestidosPage.dart';
import 'package:anita/Screens/pantalonesPage.dart';
import 'package:anita/Screens/infoPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anita',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (_) => SplashScreen(),
        'login': (_) => LoginPage(),
        'registrar': (_) => RegistrarPage(),
        'recupcontra': (_) => OlvidarContra(),
        'principal': (_) => Principal(),
        'busqueda': (_) => BusquedaPage(),
        'agendar': (_) => AgendarPage(),
        'cita': (_) => CitaPage(),
        'favorito': (_) => FavoritosPage(),
        'categoria': (_) => CatePage(),
        'vista': (_) => VistaPage(),
        'quien': (_) => QuienPage(),
        'cateblusas': (_) => CateBlusasPage(),
        'blusafavo': (_) => BlusaFavoPage(),
        'catevestidos': (_) => VestidosPage(),
        'pantalones': (_) => PantalonesPage(),
        'busos': (_) => BusosPage(),
        'vestidovista': (_) => VestidoVistaPage(),
        'vestidofavo': (_) => VestidoFavoVistaPage(),
        'pantalonvista': (_) => PantalonVistaPage(),
        'pantalonfavo': (_) => PantalonFavoVistaPage(),
        'busovista': (_) => BusoVistaPage(),
        'busofavo': (_) => BusoFavoPage(),
        'contacto': (_) => ContactoPage(),
        'somos': (_) => SomosPage(),
        'info': (_) => InfoPage(),
      },
    );
  }
}
