import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.keyboard_backspace),
            iconSize: 29.0,
            color: Colors.white,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'principal');
            },
          );
        }),
        toolbarHeight: 150,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.contain,
              height: 225,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  'Iniciar Sesión',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: 'Correo Electrónico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Contraseña:'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 160),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'principal');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.red[700],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text(' INICIAR SESIÓN ')),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'registrar');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.red[700],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('   REGISTRARSE   ')),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    child: Text(
                      'Olvidaste tu Contraseña?',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      //   Navigator.pushReplacementNamed(context, 'olvidar'),
                      //{
                      Navigator.popAndPushNamed(context, 'recupcontra');
                    },
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        minimumSize: const Size(2, 0),
                        primary: Colors.transparent),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
