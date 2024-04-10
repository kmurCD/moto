import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motomoto/ui/pages/home/widgets/background_1.dart';
import 'package:motomoto/ui/pages/home/widgets/logo_motomoto.dart';

class WelcomeTwoPage extends StatelessWidget {
  const WelcomeTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Tiempo que se muestra la pantalla de 2 segundos
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/WelcomeThree');
    });
    /*Widget que muestra la segunda pantalla (Pantalla de transicion)
    Usa el logo como Widget, y un fondo como Widget llamado Background_1*/
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackGround01(condition: true),
                  Center(
                      child: LogoMotoMoto(
                    height: 212,
                    width: 172,
                  )),
                  BackGround01(condition: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
