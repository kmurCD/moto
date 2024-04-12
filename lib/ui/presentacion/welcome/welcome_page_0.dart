import 'package:flutter/material.dart';

class WelcomeOnePage extends StatelessWidget {
  const WelcomeOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String backgrounIni = 'lib/assets/images/background_ini.png';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            //Contenedor con fondo de la pantalla de inicio
            Container(
              color: Colors.black,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(backgrounIni),
                      fit: BoxFit.cover,
                      opacity: 0.5)),
            ),
            //Texto de bienvenid@
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bienvenid@',
                    style: TextStyle(
                        fontSize: 41.49,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  //Boton que envia a la siguiente pagina
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/WelcomeTwo');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFE20727),
                      ),
                      child: const Text(
                        'Comenzemos',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
