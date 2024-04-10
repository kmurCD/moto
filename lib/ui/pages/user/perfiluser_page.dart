import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/ui/pages/user/widget/inputeditprofile.dart';

class PerfilUserPage extends StatelessWidget {
  const PerfilUserPage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    const String img =
        'https://s3-alpha-sig.figma.com/img/82f8/939a/f5813aa9ef697646cf0ca2de45e8ed2f?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bU68By8DPTjER7GmR4t~vQHK45-s1ZngDGZPu6kIP7EyBEiiH61oZAxHD4Rth20JH1GChlDkvOfsykv-owXxbyfA69RcWNNDet6ZAMxoO9h26YQIVET4PWRgPP78MiyXpFBRmCMWXzgDkBsWzCFGPgb2YeKbaqTQtl4Aqz~8rzZbn9mlavZlp25C9273ThH5gHXCRwqQw7Q~BKOuPWWnK9myk1ScdHKHivPaZwlBzJJ7efAroYBtm0K3xEwx3JkZw~6IiWPDk4sZrpqb44syOWM2Hc02IAnKVVQwN3fZunXCH5oV6xTgb6TXssFpYTLbWrx0RgLxmwykmoU0-BkETA__';

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 76,
              decoration: const BoxDecoration(
                color: Color(0xff00304E),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        'Editar Perfil',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Cliente',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.person_2_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                width: 91,
                height: 91,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xffe20727), width: 2)),
                child: ClipOval(
                    child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ))),
            InputEditProfile(icono:Icons.person_2_outlined ,
              LabelEdit: "Nombre",
              initialValue: user.name,
            ),
            InputEditProfile(icono: Icons.person_2_outlined,
              LabelEdit: "Apellidos",
              initialValue: user.lastname,
            ),
            InputEditProfile(icono:Icons.email,
              LabelEdit: "Correo electronico",
              initialValue: user.email,
            ),
            InputEditProfile(icono: Icons.phone,
              LabelEdit: "Telefono",
              initialValue: user.contact,
            ),
            const InputEditProfile(icono: Icons.location_city,
                LabelEdit: "Ciudad", initialValue: "Nodisposible"),
          ],
        ),
      ),
    );
  }
}
