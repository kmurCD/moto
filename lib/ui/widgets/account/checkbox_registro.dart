import 'package:flutter/material.dart';

class CheckBoxRegistro extends StatefulWidget {
  const CheckBoxRegistro({super.key, required this.textoInferior});

  final String textoInferior;

  @override
  State<CheckBoxRegistro> createState() => _CheckBoxRegistro();
}

class _CheckBoxRegistro extends State<CheckBoxRegistro> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        children: [
          //Contenedor del Texto
          Container(
            height: 72,
            width: 148,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff00304E)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  //Columna con el texto
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'YO SOY',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                      Text(
                        widget.textoInferior,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        side: const BorderSide(
                            color: Colors
                                .transparent), //Color de los bordes del Checkbox
                        shape: const CircleBorder(
                            side:
                                BorderSide.none), //Color de fondo del checkbox
                        fillColor: MaterialStateColor.resolveWith((states) {
                          //Color de relleno cuando el check esta activo
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return Colors.transparent;
                        }),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
