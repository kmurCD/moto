import 'dart:convert';

import 'package:motomoto/domain/entities/user.dart';
import 'package:motomoto/domain/services/util/apiuserservice.dart';

Future<void> registoUsuario(User user) async {

  final response = await ApiUserService.registerUser(user);
  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = json.decode(response.body);
    print(responseData);
  } else {
    print('Error en la solicitud: ${response.statusCode}');
  }
}
