import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OlvidarContra extends StatelessWidget {
  const OlvidarContra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(padding: const EdgeInsets.all(20.0), children: [
              Center(
                child: Image.asset(
                  'assets/logo.jpg',
                  height: 240.0,
                  fit: BoxFit.cover,
                ),
              ),
              _CreateTitulo(),
              _CreateSubtitulo(),
              _CreateCampocorreo(),
              _CreateEnviar(),
            ])));
  }
}

class _CreateTitulo extends StatelessWidget {
  const _CreateTitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "¿Olvidaste tu Contraseña?",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CreateSubtitulo extends StatelessWidget {
  const _CreateSubtitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 15),
      child: Text(
        "Escribe tu correo electronico y recibiras una nueva contraseña",
        style: TextStyle(
            color: Color.fromARGB(255, 133, 132, 132),
            fontSize: 18.5,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

class _CreateCampocorreo extends StatelessWidget {
  const _CreateCampocorreo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Correo Electrónico: ",
            fillColor: Color.fromARGB(255, 221, 221, 221),
            filled: true),
      ),
    );
  }
}

class _CreateEnviar extends StatelessWidget {
  const _CreateEnviar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 200),
      child: ElevatedButton(
        child: Text('ENVIAR'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'login');
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(100, 45),
            primary: Colors.red[700],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5))),
      ),
    );
  }
}
