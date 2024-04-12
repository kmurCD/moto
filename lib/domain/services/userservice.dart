import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/util/apigetuser.dart';
import 'package:motomoto/domain/services/util/apiuserservice.dart';
import 'package:motomoto/ui/presentacion/user/perfiluser_page.dart';

Future<void> registoUsuario(User user) async {
  try {
    final response = await ApiUserService.registerUser(user);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      (responseData);
    } else {
      ('Error en la solicitud: ${response.statusCode}');
    }
  } catch (e) {
    ('Error al realizar la solicitud: $e');
  }
}

Future<void> obtenerUsuario(
    String? id, String? token, BuildContext context) async {
  try {
    final response = await ApiGetService.getUser(id, token);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      (responseData);

      final user = User(
        name: responseData['name'],
        lastname: responseData['lastName'],
        contact: responseData['phone'],
        email: responseData['email'],
      );

      print("usuario:${user.name}");
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PerfilUserPage(
                  user: user,
                )),
      );
    } else {
      ('Error en la solicitud: ${response.statusCode}');
    }
  } catch (e) {
    ('Error al realizar la solicitud: $e');
  }
}
