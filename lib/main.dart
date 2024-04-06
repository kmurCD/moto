import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/account/screens/login_page.dart';
import 'package:motomoto/ui/pages/account/screens/register_page.dart';
import 'package:motomoto/ui/pages/home/screens/WelcomeTwo_page.dart';
import 'package:motomoto/ui/pages/home/screens/welcomeOne_page.dart';
import 'package:motomoto/ui/pages/home/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialRoute: '/WelcomeOne',
        routes: {
          '/WelcomeOne': (context) => const WelcomeOnePage(),
          '/WelcomeTwo': (context) => const WelcomeTwoPage(),
          '/WelcomeThree': (context) => const WelcomeThreePage(),
          '/Login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
        });
  }
}
