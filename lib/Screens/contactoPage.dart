import 'package:flutter/material.dart';

class ContactoPage extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(30),
                icon: new Icon(
                  Icons.phone_in_talk_sharp,
                  size: 35.3,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Text(
                '3175843281',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
              // TextField(
              //   textInputAction: TextInputAction.next,
              //   decoration: InputDecoration(
              //       border: InputBorder.none,
              //       labelText: "email",
              //       fillColor: Color.fromRGBO(242, 242, 242, 9),
              //       filled: true),
              // ),
            ],
          ),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(30),
                icon: new Icon(
                  Icons.whatsapp,
                  size: 35.3,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Text(
                '3175843281',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(30),
                icon: new Icon(
                  Icons.email_outlined,
                  size: 35.3,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Text(
                'velascod112@gmail.com',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.all(30),
                icon: new Icon(
                  Icons.location_on_outlined,
                  size: 37.3,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Text(
                'Crr 8 #15-71',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
