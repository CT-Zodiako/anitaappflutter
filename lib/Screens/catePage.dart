import 'package:flutter/material.dart';

class CatePage extends StatelessWidget {
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
                        "assets/blusas.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'cateblusas');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('          BLUSAS          '))
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
                        "assets/vestidos.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'catevestidos');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('         VESTIDOS         '))
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
                        "assets/pantalones.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'pantalones');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('     PANTALONES     '))
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
                    top: 25.0,
                  ),
                  height: size.height * 0.30,
                  width: size.width * 0.40,
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/busos.jpg",
                        fit: BoxFit.cover,
                        width: 160,
                        height: 550,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, 'busos');
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 45),
                              primary: Colors.red[700],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5),
                              )),
                          child: Text('            BUSOS           '))
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
