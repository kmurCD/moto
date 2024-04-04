import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:motomoto/domain/entities/user.dart';

final url = Uri.parse('http://192.168.1.24:3000/v1/auth/login');
final headers = {"Content-Type": "application/json;charset=UTF-8"};

class ApiLoginService {
  static Future<http.Response> loginUser(User u) async{

    final user = {
      "email": u.email,
      "password": u.password,
    };

    final response = await http.post(url, headers: headers, body: jsonEncode(user));
    return response;
  }
}