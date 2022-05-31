import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  Widget createTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "Favoritos!",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget createSubitulo() {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 15),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "Aun no tienes favoritos",
        style: TextStyle(
            color: Color.fromARGB(255, 133, 132, 132),
            fontSize: 18.5,
            fontWeight: FontWeight.bold),
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
              createSubitulo(),
              _CreateButton(),
            ])));
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 350),
      child: ElevatedButton(
        child: Text('OK!'),
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
