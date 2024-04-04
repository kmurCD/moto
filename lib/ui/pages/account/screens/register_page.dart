import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/userservice.dart';
import 'package:motomoto/ui/pages/account/widgets/buttons.dart';
import 'package:motomoto/ui/pages/account/widgets/checkbox.dart';
import 'package:motomoto/ui/pages/account/widgets/inputs.dart';
import 'package:motomoto/ui/pages/home/widgets/background.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController name = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController codigoReferido = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundMotoMoto(
            mtopBackground: 0.92,
            warrow: 150,
            harrow: 140,
          ),
          //-----------Title----------//
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xFF535461),
                      height: 0.1,
                      endIndent: 8.0,
                      indent: 90.0,
                    )),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Registrarse',
                        style:
                            TextStyle(color: Color(0xFF535461), fontSize: 22),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xFF535461),
                      height: 0.1,
                      endIndent: 90.0,
                      indent: 8.0,
                    )),
                  ],
                ),
              ),
              //---------CheckBox blue----------//
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 148,
                            height: 72,
                            decoration: BoxDecoration(
                              color: const Color(0xFF00304E),
                              borderRadius: BorderRadius.circular(5),
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 25, left: 10),
                          child: const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'YO SOY',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'CLIENTE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 100),
                          child: const CheckBoxMotoMoto(
                            checkColor: Colors.white,
                            shape: BoxShape.circle,
                            borderColor: Colors.transparent,
                            scale: 1.7,
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 148,
                            height: 72,
                            decoration: BoxDecoration(
                              color: const Color(0xFF00304E),
                              borderRadius: BorderRadius.circular(5),
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 25, left: 20),
                          child: const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'YO SOY',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'PROVEDOR',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 100),
                          child: const CheckBoxMotoMoto(
                            checkColor: Colors.white,
                            shape: BoxShape.circle,
                            borderColor: Colors.transparent,
                            scale: 1.7,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //-----inputs para el registro-----//
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    InputsMotoMoto(
                      controller: name,
                      hintText: 'Nombre',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    ),
                    InputsMotoMoto(
                      controller: lastname,
                      hintText: 'Apellido',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    ),
                    InputsMotoMoto(
                      controller: email,
                      hintText: 'Email',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    ),
                    InputsMotoMoto(
                      controller: phone,
                      hintText: 'Número de contacto',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    ),
                    InputsMotoMoto(
                      controller: password,
                      hintText: 'Contraseña',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    ),
                    InputsMotoMoto(
                      controller: codigoReferido,
                      hintText: 'Código de referido',
                      mTextTop: 10,
                      mTextLeft: 60,
                      mTextRight: 60,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: ButtonsMotoMoto(
                  bcolor: Colors.white,
                  nameicon: '',
                  text: 'Comencemos',
                  hbutton: 50,
                  wbutton: 300,
                  fSize: 20,
                  opacity: 0.9,
                  mcolor: const Color(0xFFF66A6A),
                  onPressed: () {
                    final user = User(
                        name: name.text,
                        lastname: lastname.text,
                        email: email.text,
                        contact: phone.text,
                        password: password.text,
                        ref: codigoReferido.text);

                    registoUsuario(user);
                  },
                ),
              ),
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
                        'Registrarse con',
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
                child: Row(
                  children: [
                    ButtonsMotoMoto(
                        onPressed: () {},
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
                    ButtonsMotoMoto(
                        onPressed: () {},
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
            ],
          ),
        ],
      ),
    ));
  }
}
