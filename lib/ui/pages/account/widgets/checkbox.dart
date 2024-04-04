import 'package:flutter/material.dart';

class CheckBoxMotoMoto extends StatefulWidget {
  const CheckBoxMotoMoto(
      {super.key, required this.checkColor, required this.shape, required this.borderColor, required this.scale});

  final Color checkColor;
  final BoxShape shape;
  final Color borderColor;
  final double scale;

  @override
  State<CheckBoxMotoMoto> createState() => _CheckBoxMotoMotoState();
}

bool _isChecked = false;

class _CheckBoxMotoMotoState extends State<CheckBoxMotoMoto> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: widget.scale,
      child: Checkbox(
        value: _isChecked,
        checkColor: Colors.white,
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) return widget.checkColor;
          return Colors.transparent;
        }),
        side:  BorderSide(color: widget.borderColor ),
        shape: widget.shape == BoxShape.circle ? const CircleBorder() : const ContinuousRectangleBorder(),
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value ?? false;
          });
          onChanged(value);
        },
      ),
    );
  }

  void onChanged(bool? value) {}
}
