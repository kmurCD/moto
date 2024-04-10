import 'package:flutter/material.dart';

class InputsMotoMoto extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double mTextTop;
  final double mTextRight;
  final double mTextLeft;

  const InputsMotoMoto(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.mTextTop,
      required this.mTextRight,
      required this.mTextLeft});

  @override
  State<InputsMotoMoto> createState() => _InputsMotoMotoState();
}

class _InputsMotoMotoState extends State<InputsMotoMoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * widget.mTextTop,
          right: widget.mTextRight,
          left: widget.mTextLeft),
      child: Center(
        child: TextField(style: const TextStyle(fontSize: 14),
            controller: widget.controller,
            decoration: InputDecoration(hintText: widget.hintText)),
      ),
    );
  }
}
