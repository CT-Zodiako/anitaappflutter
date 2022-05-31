import 'package:flutter/material.dart';

class AgendarPage extends StatelessWidget {
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
                  'Agendar Cita',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Nombres:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Apellidos:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Numero de identificacion:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Numero Telefonico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Correo Electronico:'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 110),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'cita');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.red[700],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('           LISTO!           ')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
