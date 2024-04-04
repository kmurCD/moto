import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/account/widgets/buttons.dart';
import 'package:motomoto/ui/pages/home/widgets/background.dart';

class WelcomeThreePage extends StatelessWidget {
  const WelcomeThreePage({super.key});

  static String imgURL =
      'https://s3-alpha-sig.figma.com/img/dbce/e3b5/97e395b0527cbc6bbd344ce93ea2467a?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dNMMB~Ct5YPhcb10GUkDxevpCIIJ36-eVGc8AgmZmc9pifhBndfjE6NvqVMEVbMGBYRQ6Tw1wXzxP-Vv6Ge4ZfzCzgbWS99hn1jKt3NCP2ltgVm3wCkM49hhd9Yb9qKZoIO5qeBT9f~Bc5~~UEmVmhNRUbTRz~azQHeNwLIIT0qRwYPKoqAvOtKNxIhBwmdyJlgYadbX5gS1qz3MW~Mohct738~ZHBObNlcuP8~WrZKgyDn3cI-d4qsPpuvoE0e13QfKXTk3Q6VLjwC5ehYliScUTUxvQiz7qmMTYvcbsObgDpVlIsl2cQxKhjq-t7yl~v-fGMpftmR2Pjp-2rDS6g__';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              BackgroundMotoMoto(
                mtopBackground: 0.67,
                harrow: 180,
                warrow: 190,
                imgURL: imgURL,
                scale: 1.8,
                marginArrow: 240,
              ),
              Container(
                margin: const EdgeInsets.only(top: 370),
                alignment: Alignment.center,
                child: Column(
                  children: [
                     SizedBox(
                      width: 255,height: 75,
                      child: Image.asset('lib/assets/welcome.png'),
                    ),
                    Container(

                      margin: const EdgeInsets.only(top: 50),
                      width: 267,
                      child: const Text(
                        'Encuentra todo lo que necesitas con solo deslizar el dedo. ¡Haz que la reparación sea pan comido!',
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: ButtonsMotoMoto(onPressed: () {
                        Navigator.pushNamed(context, '/Login');
                      },
                        bcolor: const Color(0xFFE20727),
                        wbutton: 300,
                        hbutton: 50,
                        text: 'Siguiente',
                        fSize: 20,
                        mcolor: Colors.white,
                        opacity: 0.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
