import 'package:flutter/material.dart';

class TextViewPage extends StatelessWidget {
  const TextViewPage({
    super.key,
    required this.text,
  });

  final String text;
  final String textCont_1 =
      "Encuentra todo lo que necesitas con solo deslizar el dedo. ¡Haz que la reparación sea pan comido!";
  final String textCont_2 =
      'Encuentra las mejores autopartes para tu moto al alcance de tu mano. ¡Haz tu compra ahora y lleva tu moto al siguiente nivel!';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text == "text_1" ? textCont_1 : textCont_2,
        style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 18,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
