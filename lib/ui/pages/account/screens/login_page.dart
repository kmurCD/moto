import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/loginservice.dart';
import 'package:motomoto/ui/pages/account/widgets/checkbox.dart';
import 'package:motomoto/ui/pages/account/widgets/buttons.dart';
import 'package:motomoto/ui/pages/account/widgets/inputs.dart';
import 'package:motomoto/ui/pages/home/widgets/background.dart';
import 'package:motomoto/ui/pages/home/widgets/logo.dart';


class LoginPage extends StatelessWidget {

  LoginPage({super.key});

  final TextEditingController _controllerUser = TextEditingController();
  final TextEditingController _controllerPsww = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              const BackgroundMotoMoto(mtopBackground: 0.87,harrow: 190,warrow: 170,),
              const LogoMotoMoto(
                width: 215.5,
                height: 180.6,
                mbot: 500,
                mtop: 0,
              ),
              Column(
                children: [
                  InputsMotoMoto(
                    controller: _controllerUser,
                    hintText: 'Usuario o correo',
                    mTextTop: 300,
                    mTextLeft: 60,
                    mTextRight: 60,
                  ),
                  InputsMotoMoto(
                    controller: _controllerPsww,
                    hintText: 'Contraseña',
                    mTextTop: 20,
                    mTextLeft: 60,
                    mTextRight: 60,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 45),
                        child: Center(
                          child: Row(
                            children: [
                              const CheckBoxMotoMoto( checkColor: Color(0xFFE20727),shape: BoxShape.rectangle,borderColor: Color(0xFFE20727),scale: 1,),
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
                          margin: const EdgeInsets.only(top: 40),
                          child: ButtonsMotoMoto(onPressed: () {
                            final user = User(
                                email: _controllerUser.text,
                                password: _controllerPsww.text,
                                );
                            final currentContext = context;
                            loginUsuario(user,currentContext);
                          },
                            bcolor: Colors.white,
                            nameicon: '',
                            text: 'Iniciar sesión',
                            hbutton: 50,
                            wbutton: 300,
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
                        margin: const EdgeInsets.only(top: 20, left: 65),
                        child:  Row(
                          children: [
                            ButtonsMotoMoto(onPressed:() {

                            },
                                bcolor: Colors.white,
                                nameicon: 'google',
                                wbutton: 130,
                                hbutton: 40,
                                opacity: 0.5,
                                text: 'Google',
                                fSize: 14,
                                mcolor: const Color(0xFF535461)),
                            const SizedBox(
                              width: 20,
                            ),
                            ButtonsMotoMoto(onPressed: () {

                            },
                                bcolor: Colors.white,
                                nameicon: 'facebook',
                                wbutton: 130,
                                hbutton: 40,
                                opacity: 0.5,
                                text: 'Facebook',
                                fSize: 14,
                                mcolor: const Color(0xFF535461))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: ButtonsMotoMoto(onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                          bcolor: const Color(0xFFE20727),
                          wbutton: 300,
                          hbutton: 50,
                          text: 'Registrarse',
                          fSize: 20,
                          mcolor: Colors.white,
                          opacity: 0.0,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }

  void onChanged(bool? value) {}

  recoverPassword() {}
}
