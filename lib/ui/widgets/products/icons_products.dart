import 'package:flutter/material.dart';

class IconProducts extends StatelessWidget {
  const IconProducts({
    super.key,
    required this.icono,
    required this.size,
    this.mright = 0,
    this.mleft = 0,
    this.mtop = 0,
    this.mbottom = 0,
    required this.color,
  });

  final Color color;
  final double mright;
  final double mleft;
  final double mtop;
  final double mbottom;
  final IconData icono;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: mright, left: mleft, top: mtop, bottom: mbottom),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icono,
            size: size,
            color: color,
          )),
    );
  }
}
