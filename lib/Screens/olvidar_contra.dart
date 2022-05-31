import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OlvidarContra extends StatelessWidget {
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
            color: Colors.black,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'login');
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
                  '¿Olvidaste tu Contraseña?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Escribe tu correo electronico y recibiras una nueva contraseña',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 221, 221, 221),
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'login');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.red[700],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('          LISTO!          ')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
