import 'package:flutter/material.dart';

class AgendarPage extends StatelessWidget {
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
          _CreateRegistro(),
          _CreateNombres(),
          _CreateCorreoElectronico(),
          _CreateIdentificacion(),
          _CreateNumero(),
          _CreateListoButton(),
        ]),
      ),
    );
  }
}

class _CreateRegistro extends StatelessWidget {
  const _CreateRegistro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "Agendar Cita",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CreateListoButton extends StatelessWidget {
  const _CreateListoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 140),
      child: ElevatedButton(
        child: Text('LISTO!'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'cita');
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

class _CreateTelefono extends StatelessWidget {
  const _CreateTelefono({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Numero Telefonico:'),
      ),
    );
  }
}

class _CreateNumero extends StatelessWidget {
  const _CreateNumero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Numero Telefónico:'),
      ),
    );
  }
}

class _CreateIdentificacion extends StatelessWidget {
  const _CreateIdentificacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Cédula:'),
      ),
    );
  }
}

class _CreateCorreoElectronico extends StatelessWidget {
  const _CreateCorreoElectronico({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Correo Electronico:'),
      ),
    );
  }
}

class _CreateNombres extends StatelessWidget {
  const _CreateNombres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Nombre Completo:'),
      ),
    );
  }
}
