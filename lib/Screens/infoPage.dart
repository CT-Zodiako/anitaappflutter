import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
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
                'Información Adicional',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 29.8, fontWeight: FontWeight.bold),
              ),
              Text(
                'Si no encuentras tu estilo de ropa, nos puedes enviar una foto a nuestro WhatsApp y nosotros te diremos si es posible realizarlo o no.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 5),
                child: Text(
                  'Agendamiento para medidas',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 29.8, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Para el agendamiento, puedes mirar las prendas que se han realizado y si te gusta alguna puedes oprimir el boton de cotizar.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 5),
                child: Text(
                  'Realización de las prendas',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 29.8, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'La realizacion de las prendas tendra un tiempo aproximadamente de 15 dias.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ));
  }
}
