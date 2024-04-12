import 'package:flutter/material.dart';
import 'package:motomoto/ui/widgets/background_0.dart';
import 'package:motomoto/ui/widgets/welcome/tex_view_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeThreePage extends StatelessWidget {
  final _controller = PageController();

  WelcomeThreePage({super.key});

  static String welcome = 'lib/assets/images/welcome.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              const Background0(backgroundImage: 'background_1'),
              Column(
                children: [
                  const SizedBox(
                    height: 270,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 230,
                            height: 75,
                            child: Image.asset(welcome),
                          ),
                          Container(
                            width: 267,
                            height: 130,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.1),
                            child: PageView(
                              controller: _controller,
                              children: const [
                                TextViewPage(
                                  text: 'text_1',
                                ),
                                TextViewPage(
                                  text: 'text_2',
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02),
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: 2,
                              effect: ExpandingDotsEffect(
                                  activeDotColor:
                                      const Color(0xffE20727).withOpacity(0.6),
                                  dotColor:
                                      const Color(0xff535461).withOpacity(0.5),
                                  dotHeight: 10,
                                  dotWidth: 10),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/Login');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.1),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFE20727),
                              ),
                              height: 50,
                              width: 300,
                              child: const Text(
                                "Siguiente",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
