import 'package:flutter/material.dart';

class FormRegistro extends StatelessWidget {
  final TextEditingController controller;
  final String textLabel;
  final String textAlert;
  const FormRegistro({
    super.key,
    required this.controller,
  r, required this.textLabel, required this.textAlert,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(height: MediaQuery.of(context).size.height * 0.07,
        child: TextFormField(
          controller: controller,
          decoration:  InputDecoration(
            labelText: textLabel,
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              labelStyle: const TextStyle(fontSize: 15)
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return textAlert;
            }
            return null;
          },
        ),
      ),
    );
  }
}
