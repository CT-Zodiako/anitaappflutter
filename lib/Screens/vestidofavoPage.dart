import 'package:flutter/material.dart';

class VestidoFavoVistaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.keyboard_backspace),
              iconSize: 29.0,
              color: Colors.black,
              onPressed: () {
                Navigator.popAndPushNamed(context, 'catevestidos');
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: new Icon(
                Icons.favorite,
                size: 28.3,
                color: Colors.red[700],
              ),
              onPressed: () {
                Navigator.popAndPushNamed(context, 'vestidovista');
              }),
        ],
        toolbarHeight: 150,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.contain,
              height: 208.70,
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 40.0, left: 66.0, bottom: 66.0, right: 66.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset('assets/vestido1.jpg'),
              SizedBox(height: 15),
              Text(
                'VESTIDO SEXY',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              Text(
                'Vestido con escote y detalle inferior.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 15),
              Text(
                'MATERIALES:',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              Text(
                'Tela licra, velo y resorte.',
                style: TextStyle(fontSize: 16),
              )
            ]),
          ),
          SizedBox(height: 0.0),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, 'agendar');
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 45),
                primary: Colors.red[700],
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5),
                )),
            child: Text('         COTIZAR        '),
          ),
        ],
      ),
    );
  }
}
