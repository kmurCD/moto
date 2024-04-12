import 'package:flutter/material.dart';

class TextRedesRegistro extends StatelessWidget {
  const TextRedesRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 40,
      child: Row(
        children: [
          //linea izquierda
          Expanded(
              child: Divider(
            color: Color(0xFF535461),
            height: 0.1,
            endIndent: 5.0,
            indent:
                70.0, // logitud de la linea (mientras el numero sea mayor , menor sera la linea)
          )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Registrarse con',
              style: TextStyle(
                  color: Color(0xFF535461),
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
          //linea Derecha
          Expanded(
              child: Divider(
            color: Color(0xFF535461),
            height: 0.1,
            endIndent: 70.0,
            // logitud de la linea (mientras el numero sea mayor , menor sera la linea)
            indent: 5.0,
          )),
        ],
      ),
    );
  }
}
