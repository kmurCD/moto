import 'package:flutter/material.dart';

class BtnDashBoard extends StatefulWidget {
  BtnDashBoard({super.key});

  @override
  State<BtnDashBoard> createState() => _BtnDashBoardState();
}

class _BtnDashBoardState extends State<BtnDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Define el radio del borde
        boxShadow: [
          BoxShadow(
            color: const Color(0xffe20727).withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(8, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 2, left: 4, right: 4, top: 4),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xffe20727),
                    borderRadius:
                        BorderRadius.circular(7), // Define el radio del borde
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 2, left: 4, right: 4, top: 4),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xffe20727),
                    borderRadius:
                        BorderRadius.circular(7), // Define el radio del borde
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 4, left: 4, right: 4, top: 2),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xffe20727),
                    borderRadius:
                        BorderRadius.circular(7), // Define el radio del borde
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      bottom: 4, left: 4, right: 4, top: 2),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: const Color(0xffe20727),
                    borderRadius:
                        BorderRadius.circular(7), // Define el radio del borde
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
