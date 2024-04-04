import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoMotoMoto extends StatelessWidget {
  static String urlMotoImg =
      'https://s3-alpha-sig.figma.com/img/ee90/d7af/f3bf74b1e7737a230dbf0d601824e391?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O1nnb9OU0p4UWwFYc7b~eFYWsvA7tQSAbxy-adz5iDhcjUhWxeR8JqquhbSnPMK6MttJkbb7RZnFVdUV0eRlXPSeR1gG9Xcb~zaBinxhtcousQAb~9YM4IsHshTjJ0b5zfwyBOmpcYUIM3moNY0deiKwfv8YnhZDcbL3iA7hh8iISGuvuRO43xjgr8KZwtemaV0hlDfnviDswGXS0Z3p8ygBQhI-BUpy3zPiMunIi9Q8DWfimYQXJJfU9Mxn97VN26Sot0zw1pVbWrcfvisYfQiqL7AuPw7lNEcSouMPChgpmdqjG3F7NKKN72hBiaZIQIoqRMvohMmuLXxt4I6jlw__';

  final double height;
  final double width;
  final double mtop;
  final double mbot;

  const LogoMotoMoto({
    super.key,
    required this.height,
    required this.width,
    required this.mtop,
    required this.mbot,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: mtop,bottom: mbot),
        child: Center(
      child: Image.network(
        urlMotoImg,
        height: height,
        width: width,
      ),
    ));
  }
}
