import 'package:flutter/material.dart';

class InputEditProfile extends StatefulWidget {
  const InputEditProfile(
      {super.key,
      this.onChanged,
      required this.initialValue,
      required this.LabelEdit,
      required this.icono});

  final String initialValue;
  final ValueChanged<String>? onChanged;
  final String LabelEdit;
  final IconData icono;

  @override
  State<InputEditProfile> createState() => _InputEditProfileState();
}

class _InputEditProfileState extends State<InputEditProfile> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: TextFormField(
        style: const TextStyle(
            color: Color(0xff535461), fontWeight: FontWeight.bold),
        controller: _controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: widget.LabelEdit,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: const Color.fromRGBO(128, 128, 128, 0.2),
          prefixIcon: Icon(widget.icono),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
