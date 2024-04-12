import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonRedesRegistro extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String nameIcon;
  final String nameSocial;
  final VoidCallback onPressed;

  const ButtonRedesRegistro({
    super.key,
    required this.onPressed,
    required this.nameSocial,
    required this.nameIcon,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    Widget iconWidget = nameSocial.isNotEmpty
        ? SvgPicture.asset('lib/assets/icons/$nameIcon.svg')
        : const SizedBox();
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 130,
        height: 45,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF535461).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 25,
                offset: const Offset(0, 9),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white, width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconWidget,
            Text(
              nameSocial,
              style: const TextStyle(
                  color: Color(0xFF535461), fontSize: 14, fontFamily: 'Roboto'),
            ),
          ],
        ),
      ),
    );
  }
}
