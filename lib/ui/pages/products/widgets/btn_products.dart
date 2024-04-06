import 'package:flutter/material.dart';

class BtnProducts extends StatelessWidget {
  const BtnProducts(
      {super.key,
      required this.height,
      required this.width,
      this.mright = 0,
      this.mleft = 0,
      this.mtop = 0,
      this.mbottom = 0,
      required this.btnColor,
      required this.textColor,
      required this.textcontent});

  final double height;
  final double width;
  final double mright;
  final double mleft;
  final double mtop;
  final double mbottom;
  final Color btnColor;
  final Color textColor;
  final String textcontent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: mright, left: mleft, top: mtop, bottom: mbottom),
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: btnColor, borderRadius: BorderRadius.circular(3)),
      child: Text(
        textcontent,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
