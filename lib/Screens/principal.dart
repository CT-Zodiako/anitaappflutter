import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.search),
                iconSize: 29.0,
                color: Colors.grey,
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'busqueda');
                },
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: new Icon(
                  Icons.person,
                  size: 32.0,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'login');
                }),
            IconButton(
                icon: new Icon(
                  Icons.favorite,
                  size: 28.3,
                  color: Colors.red[700],
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'favorito');
                }),
          ],
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fondo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 620)),
              Container(
                width: double.infinity,
                height: 96,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.family_restroom),
                      iconSize: 40,
                      color: Colors.red[700],
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'quien');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.woman_sharp),
                      iconSize: 40,
                      color: Colors.red[700],
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'categoria');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.calendar_month_outlined),
                      iconSize: 40,
                      color: Colors.red[700],
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'agendar');
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
