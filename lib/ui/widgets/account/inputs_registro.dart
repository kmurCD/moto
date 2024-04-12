import 'package:flutter/material.dart';

class InputsRegistro extends StatefulWidget {
  final TextEditingController controller;
  final String placeholder;
  final GlobalKey<FormState> formKey;

  const InputsRegistro({
    super.key,
    required this.controller,
    required this.placeholder,
    required this.formKey,
  });

  @override
  State<InputsRegistro> createState() => _InputsRegistro();
}

class _InputsRegistro extends State<InputsRegistro> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 290,
      child: Center(
        child: TextFormField(
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none),
          controller: widget.controller,
          decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.2)),
              hintText: widget.placeholder,
              hintStyle: const TextStyle(color: Color(0xff535461))),
          validator: (value) {
            if (value == null || value.isEmpty) {
              print('Por favor ingresa un valor');
              return 'Por favor ingresa un valor'; // Mensaje de error si el campo está vacío
            }
            return null;
          },
        ),
      ),
    );
  }

  bool validate() {
    if (widget.formKey.currentState!.validate()) {
      return true;
    }
    return false;
  }

  String getValue() {
    return widget.controller.text;
  }
}
