import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusquedaPage extends StatelessWidget {
  Widget createTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "¿Qué deseas buscar?",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget createCampoBuscar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 221, 221, 221), filled: true),
      ),
    );
  }

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
              createTitulo(),
              createCampoBuscar(),
              _CreateBuscar(),
            ])));
  }
}

class _CreateBuscar extends StatelessWidget {
  const _CreateBuscar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 270),
      child: ElevatedButton(
        child: Text('BUSCAR'),
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
