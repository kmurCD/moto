import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/AuthProvider.dart';
import 'package:provider/provider.dart'; // Importa el paquete Provider
import 'package:motomoto/ui/pages/account/screens/login_page.dart';
import 'package:motomoto/ui/pages/account/screens/register_page.dart';
import 'package:motomoto/ui/pages/home/screens/Welcome_page_1.dart';
import 'package:motomoto/ui/pages/home/screens/welcome_page_0.dart';
import 'package:motomoto/ui/pages/home/screens/welcome_page_2.dart';
// Importa tu AuthProvider

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()), // Aquí creas y proporcionas tu AuthProvider// Puedes agregar más proveedores si los necesitas
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(),
      initialRoute: '/WelcomeOne',
      routes: {
        '/WelcomeOne': (context) => const WelcomeOnePage(),
        '/WelcomeTwo': (context) => const WelcomeTwoPage(),
        '/WelcomeThree': (context) =>  WelcomeThreePage(),
        '/Login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
