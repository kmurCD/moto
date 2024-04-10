import 'dart:ffi';

import 'package:flutter/material.dart';

class Background0 extends StatelessWidget {
  final String background_1 = 'lib/assets/images/background_ini_1.png';
  final String background_2 = 'lib/assets/images/background_ini_2.png';
  static String arrowDiv = 'lib/assets/images/Arrow_div.png';
  final String backgroundImage;
  final double heightImage;
  final double heightBackground;
  final double marginBackground;

  const Background0({
    super.key,
    required this.backgroundImage,
    this.heightImage = 400.0,
    this.heightBackground =200,
    this.marginBackground= 200,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: heightImage,
          child: Image(
            image: AssetImage(backgroundImage == 'background_1'
                ? background_1
                : background_2),
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200))),
              height: heightBackground,
              margin:  EdgeInsets.only(top: marginBackground),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
            ))
          ],
        ),
      ],
    );
  }
}
