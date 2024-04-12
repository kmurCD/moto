import 'package:flutter/material.dart';

class ButtonRegistro extends StatelessWidget {
  const ButtonRegistro({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFFF66A6A),
                  blurRadius: 20,
                  offset: Offset(2, 6),
                  spreadRadius: 1,
                  blurStyle: BlurStyle.normal)
            ]),
        width: 270,
        height: 39,
        child: const Text(
          "Comencemos",
          style: TextStyle(
              color: Color(0xffE20727),
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
      ),
    );
  }
}
// ButtonsMotoMoto(
//   bcolor: Colors.white,
//   nameicon: '',
//   text: 'Comencemos',
//   hbutton: 50,
//   wbutton: 300,
//   fSize: 20,
//   opacity: 0.9,
//   mcolor: const Color(0xFFF66A6A),
//   onPressed: () {
//     final user = User(
//         name: _name.text,
//         lastname: _lastname.text,
//         email: _email.text,
//         contact: _phone.text,
//         password: _password.text,
//         ref: _codigoReferido.text);
//     registoUsuario(user);
//   },
// ),
