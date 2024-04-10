import 'dart:convert';
import 'package:motomoto/domain/entities/AuthProvider.dart';
import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/ui/pages/products/homeproducts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'util/apiloginuser.dart';


String userId = '';

Future<void> loginUsuario(User user, BuildContext context) async {
  try {
    final response = await ApiLoginService.loginUser(user);
    print('Respuesta: ${response.body}');
    print(response.statusCode);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String authToken = responseData['token'];
      final String userId = responseData['userId'];



      Provider.of<AuthProvider>(context, listen: false).setAuthToken(authToken);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeProducts(
                  authToken: authToken,
                  userId: userId,
                )),
      );
      print('token= ${authToken}');
      print("id_user= ${userId}");
    } else {
      ('Error en la solicitud: ${response.statusCode}');
    }
  } catch (e) {
    ('Se produjo una excepción: $e');
    ('Ocurrió un error durante el inicio de sesión.');
  }
}
