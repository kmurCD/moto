import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/AuthProvider.dart';
import 'package:motomoto/ui/presentacion/account/login_page.dart';
import 'package:motomoto/ui/presentacion/welcome/welcome_page_0.dart';
import 'package:motomoto/ui/presentacion/welcome/welcome_page_1.dart';
import 'package:motomoto/ui/presentacion/welcome/welcome_page_2.dart';
import 'package:provider/provider.dart';

import 'ui/presentacion/account/register_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                AuthProvider()), // Aquí creas y proporcionas tu AuthProvider// Puedes agregar más proveedores si los necesitas
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      initialRoute: '/WelcomeOne',
      routes: {
        '/WelcomeOne': (context) => const WelcomeOnePage(),
        '/WelcomeTwo': (context) => const WelcomeTwoPage(),
        '/WelcomeThree': (context) => WelcomeThreePage(),
        '/Login': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
