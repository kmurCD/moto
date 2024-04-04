import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/account/screens/login_page.dart';
import 'package:motomoto/ui/pages/account/screens/register_page.dart';
import 'package:motomoto/ui/pages/home/screens/WelcomeTwo_page.dart';
import 'package:motomoto/ui/pages/home/screens/welcomeOne_page.dart';
import 'package:motomoto/ui/pages/home/screens/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialRoute: '/WelcomeOne',
        routes: {
          '/WelcomeOne': (context) => WelcomeOnePage(),
          '/WelcomeTwo': (context) => WelcomeTwoPage(),
          '/WelcomeThree': (context) => WelcomeThreePage(),
          '/Login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
        });
  }
}
