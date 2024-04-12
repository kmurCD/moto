import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:motomoto/domain/entities/user.dart';

final url = Uri.parse('http://35.170.243.29:3000/v1/auth/register');
final headers = {"Content-Type": "application/json;charset=UTF-8"};

class ApiUserService {
  static Future<http.Response> registerUser(User u) async{

    final user = {
      "name": u.name,
      "lastName": u.lastname,
      "email": u.email,
      "phone": u.contact,
      "password": u.password,
      "codigoReferido": u.ref,
    };

    final response = await http.post(url, headers: headers, body: jsonEncode(user));
    print(response.statusCode);
    return response;

  }
}

