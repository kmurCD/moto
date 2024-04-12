import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonsMotoMoto extends StatelessWidget {
  final double wbutton;
  final double hbutton;
  final String text;
  final double fSize;
  final Color mcolor;
  final double opacity;
  final String nameicon;
  final Color bcolor;
  final VoidCallback onPressed;

  const ButtonsMotoMoto({
    super.key,
    required this.wbutton,
    required this.hbutton,
    required this.text,
    required this.fSize,
    required this.mcolor,
    required this.opacity,
    this.nameicon = '',
    required this.bcolor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    double screenWidtch = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    Widget iconWidget = nameicon.isNotEmpty
        ? SvgPicture.asset('lib/assets/icons/$nameicon.svg')
        : const SizedBox();

    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: screenWidtch*wbutton,
        height: screenheight*hbutton,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: mcolor.withOpacity(opacity),
                spreadRadius: 1,
                blurRadius: 25,
                offset: const Offset(0, 9),
              ),
            ],
            color: bcolor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: mcolor, width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            Container(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  text,
                  style: TextStyle(
                      color: mcolor, fontSize: fSize, fontFamily: 'Roboto'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
