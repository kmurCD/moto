
import 'package:flutter/material.dart';

class Background0 extends StatelessWidget {
  final String background_1 = 'lib/assets/images/background_ini_1.png';
  final String background_2 = 'lib/assets/images/background_ini_2.png';
  static String arrowDiv = 'lib/assets/images/Arrow_div.png';
  final String backgroundImage;
  final double heightImage;
  final double heightBackground;
  final double marginBackground;

  const Background0({
    super.key,
    required this.backgroundImage,
    this.heightImage = 0.40,
    this.heightBackground =0.06,
    this.marginBackground= 0.02,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidtch = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return SizedBox(height: screenheight,
      width: screenWidtch,
      child: Stack(
        children: [
          SizedBox(
            height: screenheight * 0.40 ,
            child: Image(
              image: AssetImage(backgroundImage == 'background_1'
                  ? background_1
                  : background_2),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(200),
                        topRight: Radius.circular(200))),
                height: screenheight * 0.60,
                margin:  EdgeInsets.only(top: screenheight*heightBackground ),
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
