import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class BackGround01 extends StatelessWidget {
  const BackGround01({super.key, required this.condition});
  final String imgU = 'lib/assets/images/U.png';
  final String arrowDiv = 'lib/assets/images/Arrow_div.png';
  final bool condition;
  @override
  Widget build(BuildContext context) {
    return condition ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            alignment: Alignment.centerLeft,
            width: 124,
            height: 191,
            margin: const EdgeInsets.only(top: 10),
            child: ClipRect(
              child: Align(
                alignment: Alignment.centerRight,
                widthFactor: 0.5,
                child: Image.asset(
                  imgU,
                ),
              ),
            )),
        Transform.rotate(angle: pi/2,
          child: Container(
              width: 130,
              height: 130,
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(height: 130,
                arrowDiv,fit: BoxFit.cover,
              )),
        )
      ],
    ): Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Transform.rotate(angle: -pi/2,
          child: Container(

              width: 130,
              height: 130,
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(height: 130,
                arrowDiv,fit: BoxFit.cover,
              )),
        ),Container(
            alignment: Alignment.centerRight,
            width: 124,
            height: 191,
            margin: const EdgeInsets.only(top: 10),
            child: ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                widthFactor: 0.5,
                child: Image.asset(
                  imgU,
                ),
              ),
            )),
      ],
    );
  }
}
