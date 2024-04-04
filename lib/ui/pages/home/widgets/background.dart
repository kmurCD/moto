import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundMotoMoto extends StatelessWidget {
  final String urlTopImg =
      'https://s3-alpha-sig.figma.com/img/559d/dd79/cd78654edc3505cd5dc57d7c39d3ccee?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qThlFiDEhSUT9VDTi~3N7vNWBxH7Gl556TkKhsGy6P5Lx2Zj6AAbCnNHAZ0oUN1GGXLc082jAMxLHSy2z1B1kr1KXtc9acPqbOqjSodzGyOaAoDQSYUmP2-L7uQvj19p5Onn530n-POMyzDXoM4Cd08SEfJHf4nf7ECve4vsks6uPE~aCUhmJf~OJKUDmSjWABze-GWADk39A6vV0-YIVbuusvHn5ZzAZ~zuHapJLcZY06Ow9wGRjC-5OuvH~cSJwjnxxleUwLMrJ7mRiu7nyhe8PmsDxHs0ecUmGpxaDiqTeZIEimWHxEOOTgiY3-b50jR8n36Y1JKDFzZJeHvPvg__';
  static String urlArrowImg =
      'https://s3-alpha-sig.figma.com/img/2c31/acfc/d05b058e628a33a6a35bc65d38566592?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hexAEumIOSrplI8~~8xGB4MNgPAvWCo6rr~WP5czXW0mmKyjhjU656brwC5xoZWwPMU79NrVZRJ4MWBIX9O4pQTvx-saz6uT~HgxZCx948e4FJ5CUy1fqSYhA6HfT-O0yWKHg3FQqbfM5tOxvwkdH-0O0e-oEeZQHRgLVhibAnm6FTE7uBl27KrxKnQdd~SiLFHJMaMQSGawLnCNmwnz9TUNEJYXuG7TuCqepkdFVw5Hsd6TCHJlSLeWgDBf6a4gFDTwhHBLdagourAcWA~WdaB4RF6mlY~ybxtyagu33K2-xLu5g0QWEQoFUN5s92nJIqrHw63ENjwGhBqjO09t0w__';
  final double mtopBackground;
  final double harrow;
  final double warrow;
  final String imgURL;
  final double scale;
  final double marginArrow;

  const BackgroundMotoMoto(
      {super.key,
      required this.mtopBackground,
      required this.harrow,
      required this.warrow,
      this.imgURL = '',
      this.scale = 1,
      this.marginArrow = 40});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Stack(
            children: [
              Positioned(
                //imagen
                top: 0,
                left: 0,
                right: 0,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Transform.scale(
                  scale: scale,
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    imgURL.isEmpty ? urlTopImg : imgURL,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                // fondo blanco, sobre la imagen
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * mtopBackground,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(300, 250),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: marginArrow),
                child: SizedBox.square(
                  child: Transform.rotate(
                    angle: -pi / -2,
                    child: FractionalTranslation(
                      translation: const Offset(0.0, 0.3),
                      child: SizedBox(
                        height: harrow,
                        width: warrow,
                        child: Image.network(urlArrowImg),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
