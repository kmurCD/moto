import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/products/widgets/btn_dashboard.dart';
import 'package:motomoto/ui/pages/products/widgets/btn_products.dart';
import 'package:motomoto/ui/pages/products/widgets/card_products.dart';
import 'package:motomoto/ui/pages/products/widgets/icons_products.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final String img =
        'https://s3-alpha-sig.figma.com/img/82f8/939a/f5813aa9ef697646cf0ca2de45e8ed2f?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bU68By8DPTjER7GmR4t~vQHK45-s1ZngDGZPu6kIP7EyBEiiH61oZAxHD4Rth20JH1GChlDkvOfsykv-owXxbyfA69RcWNNDet6ZAMxoO9h26YQIVET4PWRgPP78MiyXpFBRmCMWXzgDkBsWzCFGPgb2YeKbaqTQtl4Aqz~8rzZbn9mlavZlp25C9273ThH5gHXCRwqQw7Q~BKOuPWWnK9myk1ScdHKHivPaZwlBzJJ7efAroYBtm0K3xEwx3JkZw~6IiWPDk4sZrpqb44syOWM2Hc02IAnKVVQwN3fZunXCH5oV6xTgb6TXssFpYTLbWrx0RgLxmwykmoU0-BkETA__';
    final String nameUser = 'Usuario';
    final String img2 =
        'https://s3-alpha-sig.figma.com/img/b433/77ec/f7f2f3cfedb5e09269a49089ff26adca?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qL4R0BXYdEGg1xR~47UMFaNpejoM-07WJ~-mc5PHqbscxUdEGPDopxK3f-2CppIQcoOEqOBSzt-CmbOULGW9vjhnvf8Nw7vZU7SUF88GU-A1fHUDSwXRMqqEPDxD6i-B5aAbSYnTY6vQf2CWU5-H3QIaVZfS5~3AACPZip5~a1~Tx54FHs3i5x9tVI9pPCYmX1gY7Qbk~ab71lwC5fPMdKc3iPMV9Hz50DaCp4n~UZxgX68yv9ZOTndN720FX48soHCAbiFHCKfQd6K-yJLArGfnL1gLIq2IW5vjSp3OewDE8Ad-WvMs6gk-ZBr65cOOF0j4K1E7CoCdqVd4rWRcig__';
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(right: 180),
                        width: 100,
                        height: 100,
                        child: Transform.scale(
                          scale: 0.3,
                          child:   BtnDashBoard(),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10, top: 10),
                      child: const Icon(
                        Icons.notifications,
                        size: 40,
                        color: Color(0xff00304E),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xffe20727), width: 2)),
                      child: ClipOval(
                          child: Image.network(
                        img,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '!Hola $nameUser!',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Bienvenid@',
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  height: 136,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff00304E),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 10),
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Repuesto para',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'MOTOS.',
                                style: TextStyle(
                                    color: Color(0xffe20727),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const BtnProducts(
                                height: 28,
                                width: 105,
                                btnColor: Color(0xffe20727),
                                textColor: Colors.white,
                                textcontent: 'VER MÁS',
                                mtop: 5,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.centerRight,
                          height: 84,
                          width: 90,
                          child: Image.network(
                            img2,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 10, right: 30, left: 30, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Categorias',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 32,
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      BtnProducts(
                        height: 28,
                        width: 105,
                        btnColor: Color(0xffe20727),
                        textColor: Colors.white,
                        textcontent: 'Cadenas',
                        mleft: 5,
                        mright: 5,
                      ),
                      BtnProducts(
                        height: 28,
                        width: 105,
                        btnColor: Color(0xffEEEEEE),
                        textColor: Colors.black,
                        textcontent: 'Llantas',
                        mleft: 5,
                        mright: 5,
                      ),
                      BtnProducts(
                        height: 28,
                        width: 105,
                        btnColor: Color(0xffEEEEEE),
                        textColor: Colors.black,
                        textcontent: 'Llantas',
                        mleft: 5,
                        mright: 5,
                      ),
                      BtnProducts(
                        height: 28,
                        width: 105,
                        btnColor: Color(0xffEEEEEE),
                        textColor: Colors.black,
                        textcontent: 'Llantas',
                        mleft: 5,
                        mright: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 340,
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 150, child: CardProducts()),
                          SizedBox(width: 150, child: CardProducts()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 150, child: CardProducts()),
                          SizedBox(width: 150, child: CardProducts()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 150, child: CardProducts()),
                          SizedBox(width: 150, child: CardProducts()),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const IconProducts(
                        icono: Icons.home,
                        size: 28,
                        color: Colors.grey,
                      ),
                      const IconProducts(
                        icono: Icons.favorite,
                        size: 28,
                        color: Colors.grey,
                      ),
                      Container(margin: const EdgeInsets.only(bottom: 7),
                        height: 57,
                        width: 57,
                        decoration: BoxDecoration(
                            color: const Color(0xffe20727),
                            borderRadius: BorderRadius.circular(50)),
                        child: const IconProducts(
                          icono: Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const IconProducts(
                        icono: Icons.notifications,
                        size: 28,
                        color: Colors.grey,
                      ),
                      const IconProducts(
                        icono: Icons.shopping_cart,
                        size: 28,
                        color: Colors.grey,
                      ),
                    ],
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
