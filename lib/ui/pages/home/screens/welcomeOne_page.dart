import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/account/widgets/buttons.dart';

class WelcomeOnePage extends StatelessWidget {
  const WelcomeOnePage({super.key});

  final String imgURL =
      'https://s3-alpha-sig.figma.com/img/e72e/7f04/c371fda4415296ec05c4bd8d3b3c7d8d?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YAvGlFo9i4Mh--ZYlGSyWfGH3VETXyeyIbpSgHJ2hU0jVjqG0qgYCsK0QDmFFU0-bNwMY-csORjZ3p8HzD~XrP4NnsNPKbw7wBOJsBQEBZ-6KWixck8qagDzVJJb8wxEWBSRUDvb9U~bFQHgrR9Zak~BnszJYXVWTDEw~o0FqJ~186ECE~jwEEJfY9O1XZkUPF4dgStTv5S6DQ-CXcjQkDzv63SGsH0n8sqUEO5a-puGOUT2Usz4t2qQYDPp0h8-RADi8YGjAwLDdCxCDn3YccwoGn1tO7~k7~ibE3ZUtNTQs4OckH~myan5Ekb9OH-rsbFOvp8CU-FnRqSSpEmLIw__';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.black, // Establece el color de fondo a negro
            ),
            Transform.scale(
              scale: 1.5,
              alignment: Alignment.topCenter,
              child: Opacity(
                opacity: 0.5,
                child: Image(
                  image: NetworkImage(imgURL),
                ),
              ),
            ),
            Container(alignment: Alignment.center,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bienvenid@',
                    style: TextStyle(
                        fontSize: 41.49,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: ButtonsMotoMoto(
                      onPressed: () {
                        Navigator.pushNamed(context, '/WelcomeTwo');
                      },
                      bcolor: const Color(0xFFE20727),
                      wbutton: 300,
                      hbutton: 50,
                      text: 'Comenzemos',
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
      ),
    );
  }
}
