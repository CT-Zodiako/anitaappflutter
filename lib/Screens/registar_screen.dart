import 'package:anita/Screens/login_screen.dart';
import 'package:anita/Screens/providers/login_form_provider.dart';
import 'package:anita/Screens/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistrarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final loginForm = Provider.of<LoginFormProvider>(context);
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
              Navigator.popAndPushNamed(context, 'login');
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
                  'Regístrate',
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
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Correo Electronico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Contraseña:'),
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
                    decoration: InputDecoration(hintText: 'Direccion:'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        //loginForm.isLoading
                        //      null
                        //     : () async {
                        //         FocusScope.of(context).unfocus();
                        //         final authService = Provider.of<AuthService>(
                        //             context,
                        //             listen: false);
                        //         if (!loginForm.isValidForm()) return;
                        //         loginForm.isLoading = true;
                        //         final String? errorMessage =
                        //             await authService.createUser(
                        //                 loginForm.email, loginForm.password);
                        //         if (errorMessage == null) {
                        //           Navigator.pushReplacementNamed(
                        //               context, 'principal');
                        //         } else {
                        //           print(errorMessage);
                        //           loginForm.isLoading = false;
                        //         }
                        //       }, //{
                        Navigator.popAndPushNamed(context, 'login');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.red[700],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('         LISTO!          ')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
