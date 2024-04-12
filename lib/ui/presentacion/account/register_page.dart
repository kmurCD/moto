import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/userservice.dart';

import 'package:motomoto/ui/presentacion/account/login_page.dart';
import 'package:motomoto/ui/widgets/account/button_redes_registro.dart';
import 'package:motomoto/ui/widgets/account/button_registro.dart';
import 'package:motomoto/ui/widgets/account/checkbox_registro.dart';
import 'package:motomoto/ui/widgets/account/input_registro_V2.dart';
import 'package:motomoto/ui/widgets/account/text_redes_registro.dart';
import 'package:motomoto/ui/widgets/account/titulo_registro.dart';
import 'package:motomoto/ui/widgets/background_0.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPagePreState createState() => _RegisterPagePreState();
}

class _RegisterPagePreState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController codigoReferido = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidtch = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenheight,
          child: Stack(
            children: [
              const Background0(
                backgroundImage: 'background_ini_2',
                marginBackground: 70,
              ),
              Container(
                height: screenheight,
                color: Colors.transparent,
                width: screenWidtch,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenheight * 0.1,
                    ),
                    SizedBox(
                        height: screenheight * 0.05,
                        child: const TituloRegistro()),
                    SizedBox(
                      height: screenheight * 0.072,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 5),
                              child: const CheckBoxRegistro(
                                textoInferior: 'CLIENTE',
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const CheckBoxRegistro(
                                textoInferior: 'PROVEDOR',
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: screenheight * 0.020),
                      height: screenheight * 0.43,
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            FormRegistro(
                              controller: name,
                              textLabel: 'Nombre',
                              textAlert: 'Porfavor Ingresa tu nombre',
                            ),
                            FormRegistro(
                              controller: lastname,
                              textLabel: 'Apellidos',
                              textAlert: 'Porfavor Ingresa tus Apellidos',
                            ),
                            FormRegistro(
                              controller: email,
                              textLabel: 'Email',
                              textAlert: 'Porfavor Ingresa tu Email',
                            ),
                            FormRegistro(
                              controller: phone,
                              textLabel: 'Número de contacto',
                              textAlert: 'Porfavor Ingresa tus Apellidos',
                            ),
                            FormRegistro(
                              controller: password,
                              textLabel: 'Contraseñá',
                              textAlert: 'Porfavor Ingresa tus Contraseñá',
                            ),
                            FormRegistro(
                              controller: codigoReferido,
                              textLabel: 'Codigo de referido',
                              textAlert: 'Porfavor Ingresa tus Apellidos',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: screenheight * 0.041,
                        margin: EdgeInsets.only(
                            top: screenheight * 0.040,
                            bottom: screenheight * 0.020),
                        child: ButtonRegistro(
                          onPressed: () {
                            _submitForm();
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(bottom: screenheight * 0.020),
                      child: const TextRedesRegistro(),
                    ),
                    SizedBox(
                      height: screenheight * 0.045,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * 0.02,
                            ),
                            child: ButtonRedesRegistro(
                              nameIcon: 'facebook',
                              onPressed: () {},
                              nameSocial: 'Facebook',
                              formKey: _formKey,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                            ),
                            child: ButtonRedesRegistro(
                              formKey: _formKey,
                              nameIcon: 'google',
                              onPressed: () {},
                              nameSocial: 'Google',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String nombre = name.text;
      String apellid = lastname.text;
      String correo = email.text;
      String telefono = phone.text;
      String contrasena = password.text;
      String codigo = codigoReferido.text;

      final user = User(
        name: nombre,
        lastname: apellid,
        email: correo,
        password: contrasena,
        contact: telefono,
        ref: codigo,
      );
      registoUsuario(user);

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Datos Registrados.'),
      ));

      print(nombre);
      print(apellid);
      print(correo);
      print(telefono);
      print(contrasena);
      print(codigo);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      name.clear();
      lastname.clear();
      email.clear();
      phone.clear();
      password.clear();
      codigoReferido.clear();
    }
  }
}
