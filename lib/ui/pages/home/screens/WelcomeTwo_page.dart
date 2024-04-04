import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/home/widgets/logo.dart';

class WelcomeTwoPage extends StatelessWidget {
  const WelcomeTwoPage({super.key});

  final String imgUrlU =
      'https://s3-alpha-sig.figma.com/img/26f8/5541/a9963331b4143aae63680a3a01e67b4c?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dUZO6MDHD3dC-XpPzChdxswTXG7tKXE4-naODed1e68Yuqf4AjUbUcbhiPSYPl2cBa138MPEVDb~AZSwsrimo7hrQAwp5kjV4Xfgout4gTGWr6kXQIU6P2dYh1hDGsWVNhQthgP~98QwL5Qzo0MbbloCjTCrGiZ7vIUATpi7b~CWD43q77GTGfcdqq6c3VoB8PZd~DDHp7wa5YpRV0RuF1yxUiIKOxwmhE0fUCWnbL~jRBYViFB1mXxBkahH7tHtpDT-azcwxDiR9U0xCcCudVmMt4v3IPwxcOcfgDRWOF9woa9dW20PnVeEWF4Uyk5nZpzOx5M0EXkg3oegQmP~0A__';
  static String urlArrowImg =
      'https://s3-alpha-sig.figma.com/img/2c31/acfc/d05b058e628a33a6a35bc65d38566592?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hexAEumIOSrplI8~~8xGB4MNgPAvWCo6rr~WP5czXW0mmKyjhjU656brwC5xoZWwPMU79NrVZRJ4MWBIX9O4pQTvx-saz6uT~HgxZCx948e4FJ5CUy1fqSYhA6HfT-O0yWKHg3FQqbfM5tOxvwkdH-0O0e-oEeZQHRgLVhibAnm6FTE7uBl27KrxKnQdd~SiLFHJMaMQSGawLnCNmwnz9TUNEJYXuG7TuCqepkdFVw5Hsd6TCHJlSLeWgDBf6a4gFDTwhHBLdagourAcWA~WdaB4RF6mlY~ybxtyagu33K2-xLu5g0QWEQoFUN5s92nJIqrHw63ENjwGhBqjO09t0w__';

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/WelcomeThree');
    });

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox.square(
                    child: FractionalTranslation(
                      translation: const Offset(-0.5, 0.0),
                      child: SizedBox(
                        width: 124,
                        height: 191,
                        child: Image.network(imgUrlU),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SizedBox.square(
                    child: Transform.rotate(
                      angle: -pi / -2,
                      child: FractionalTranslation(
                        translation: const Offset(0.0, -0.63),
                        child: SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.network(urlArrowImg),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Center(
                child: LogoMotoMoto(
              height: 212,
              width: 172,
              mtop: 0,
              mbot: 0,
            )),
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: SizedBox.square(
                      child: Transform.rotate(
                        angle: -pi / -2,
                        child: FractionalTranslation(
                          translation: const Offset(0.0, 0.4),
                          child: SizedBox(
                            height: 250,
                            width: 250,
                            child: Image.network(urlArrowImg),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: SizedBox.square(
                      child: FractionalTranslation(
                        translation: const Offset(0.8, 0.0),
                        child: SizedBox(
                          width: 124,
                          height: 191,
                          child: Image.network(imgUrlU),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
