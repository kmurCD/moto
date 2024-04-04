import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/util/apiloginuser.dart';
import 'package:motomoto/ui/pages/products/homeproducts.dart';

Future<void> loginUsuario(User user, BuildContext context) async {

  final response = await ApiLoginService.loginUser(user);
  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeProducts()),
    );
  } else {
    print('Error en la solicitud: ${response.statusCode}');

  }
}
