import 'package:flutter/material.dart';

class SomosPage extends StatelessWidget {
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
                Navigator.popAndPushNamed(context, 'quien');
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
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                '¿Quiénes Somos?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 29.8,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Somos un negocio pequeño, conformado por mi mamá, mi hermana y yo. Este negocio tiene como objetivo realizar ropa a la medida de cada mujer, ya que hay mujeres las cuales tienen problemas para encontrar ropa a su medida, ya que la mayoria de las marcas de ropa se basan en la talla de una minoría de mujeres con cuerpos perfectos.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
