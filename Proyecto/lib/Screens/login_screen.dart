import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget Bienvenido() {
    return Text(
      "Iniciar Sesión",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 40.0,
          fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(padding: const EdgeInsets.all(20.0), children: [
          Center(
            child: Image.asset(
              'assets/logo.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
          ),
          Bienvenido(),
          _CreateEmailInput(),
          _CreatePasswordInput(),
          _CreateLoginButton(),
          _CreateRegistrarseButton(),
          _CreateAccountLink(),
        ]),
      ),
    );
  }
}

class _CreateLoginButton extends StatelessWidget {
  const _CreateLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 90),
      child: ElevatedButton(
        child: Text('INICIAR SESION'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'principal');
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

class _CreateEmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Correo electrónico'),
      ),
    );
  }
}

class _CreatePasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña:'),
        obscureText: true,
      ),
    );
  }
}

class _CreateAccountLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35),
      child: ElevatedButton(
        child: Text(
          'Olvidaste tu contraseña?',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'recupcontra');
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          minimumSize: const Size(2, 0),
          primary: Colors.transparent,
        ),
      ),
    );
  }
}

class _CreateRegistrarseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        child: Text('REGISTRARSE'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'registrar');
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(0, 45),
            primary: Colors.red[700],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5))),
      ),
    );
  }
}
