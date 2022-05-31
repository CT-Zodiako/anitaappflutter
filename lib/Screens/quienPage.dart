import 'package:flutter/material.dart';

class QuienPage extends StatelessWidget {
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
                        "assets/TELAS.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'contacto');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('       CONTACTO      '))
                    ],
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                onTap: () {
                  print('le estamos dando tappppppppp');
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
                        "assets/mujeres.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'somos');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('¿QUIENES SOMOS?'))
                    ],
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 25.0, left: 25),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/info.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'info');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('    INFORMACION    '))
                    ],
                    alignment: Alignment.bottomCenter,
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
