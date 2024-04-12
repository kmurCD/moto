

import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/loginservice.dart';
import 'package:motomoto/ui/widgets/account/checkbox.dart';
import 'package:motomoto/ui/widgets/account/button_login.dart';
import 'package:motomoto/ui/widgets/account/input_registro_V2.dart';
import 'package:motomoto/ui/widgets/background_0.dart';
import 'package:motomoto/ui/widgets/welcome/logo_motomoto.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerUsuario = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidtch = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: SizedBox(
              height:screenheight,
              child: Stack(
                children: [
                  const Background0(
                    backgroundImage: 'background_2',
                    heightBackground: 0.06,
                    heightImage: 0.40,
                    marginBackground: 0.02,
                  ),
                  SizedBox(height:screenheight ,width: screenheight,
                    child: Column(
                      children: [
                        Container(height: screenheight *0.1),
                        Column(
                          children: [
                            const LogoMotoMoto(
                              width: 215.5,
                              height: 180.6,
                            ),
                            SizedBox(height:screenheight* 0.15 ,
                              width: screenWidtch *0.8,
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    FormRegistro(
                                      controller: _controllerUsuario,
                                      textLabel: 'Nombre',
                                      textAlert: 'Porfavor Ingresa tu Nombre',
                                    ),
                                    FormRegistro(
                                      controller: _controllerPassword,
                                      textLabel: 'Contraseñá',
                                      textAlert: 'Porfavor Ingresa tu Contraseñá',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: screenheight* 0.40,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 0, left: 45),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const CheckBoxMotoMoto(
                                            checkColor: Color(0xFFE20727),
                                            shape: BoxShape.rectangle,
                                            borderColor: Color(0xFFE20727),
                                            scale: 1,
                                          ),
                                          const Text(
                                            'Recordar contraseña',
                                            style: TextStyle(
                                                color: Color.fromRGBO(226, 7, 39, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 10),
                                          ),
                                          const SizedBox(width: 35),
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            recoverPassword()));
                                              },
                                              child: const Text(
                                                '¿Olvdidaste tu contraseñá?',
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 10,
                                                    color: Color.fromRGBO(0, 48, 78, 1)),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: ButtonsMotoMoto(
                                        onPressed: () {
                                          _submitForm(context);
                                        },
                                        bcolor: Colors.white,
                                        nameicon: '',
                                        text: 'Iniciar sesión',
                                        hbutton: 0.055,
                                        wbutton: 0.7,
                                        fSize: 20,
                                        opacity: 0.9,
                                        mcolor: const Color(0xFFF66A6A),
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(top: 30),
                                    child: const Row(
                                      children: [
                                        Expanded(
                                            child: Divider(
                                          color: Color(0xFF535461),
                                          height: 0.1,
                                          endIndent: 8.0,
                                          indent: 70.0,
                                        )),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'iniciar sesión con',
                                            style: TextStyle(
                                              color: Color(0xFF535461),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Divider(
                                          color: Color(0xFF535461),
                                          height: 0.1,
                                          endIndent: 70.0,
                                          indent: 8.0,
                                        )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: screenheight*0.05,
                                    margin: EdgeInsets.only(top: screenheight*0.01, bottom: screenheight*0.01),
                                  width: screenWidtch *0.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ButtonsMotoMoto(
                                            onPressed: () {},
                                            bcolor: Colors.white,
                                            nameicon: 'google',
                                            hbutton: 0.05,
                                            wbutton: 0.3,
                                            opacity: 0.5,
                                            text: 'Google',
                                            fSize: 14,
                                            mcolor: const Color(0xFF535461)),
                                        ButtonsMotoMoto(
                                            onPressed: () {},
                                            bcolor: Colors.white,
                                            nameicon: 'facebook',
                                            hbutton: 0.05,
                                            wbutton: 0.3,
                                            opacity: 0.5,
                                            text: 'Facebook',
                                            fSize: 14,
                                            mcolor: const Color(0xFF535461))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 40),
                                    child: ButtonsMotoMoto(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/register');
                                      },
                                      bcolor: const Color(0xFFE20727),
                                      hbutton: 0.055,
                                      wbutton: 0.7,
                                      text: 'Registrarse',
                                      fSize: 20,
                                      mcolor: Colors.white,
                                      opacity: 0.0,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }


  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      String email = _controllerUsuario.text;
      String password = _controllerPassword.text;

      final user = User(
        email: _controllerUsuario.text,
        password: _controllerPassword.text,
      );
      loginUsuario(user, context);



      print(email);
      print(password);


      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(
            )),
      );
    }
  }
  void onChanged(bool? value) {}

  recoverPassword() {}
}
