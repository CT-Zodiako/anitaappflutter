import 'package:flutter/material.dart';

class VestidosPage extends StatelessWidget {
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
              Navigator.popAndPushNamed(context, 'categoria');
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
        children: [
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 05.0,
                  ),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/vestido1.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'vestidovista');
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 05.0,
                  ),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/vestido2.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/vestido3.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/vestido4.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
