import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoMotoMoto extends StatelessWidget {
  static String logoMotoMoto = 'lib/assets/images/Logo.png';
  final double height;
  final double width;
  final double marginTop;
  final double marginBotton;

  const LogoMotoMoto({
    super.key,
    required this.height,
    required this.width,
    this.marginTop = 0,
    this.marginBotton = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: marginTop, bottom: marginBotton),
        child: Center(
          child: Image.asset(
            logoMotoMoto,
            height: height,
            width: width,
          ),
        ));
  }
}
