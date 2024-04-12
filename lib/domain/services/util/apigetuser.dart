import 'package:http/http.dart' as http;

class ApiGetService {
  static Future<dynamic> getUser(String? id, String? authToken) async {
    const String baseUrl = 'http://35.170.243.29:3000/v1/users/';
    final Uri url = Uri.parse(baseUrl + (id ?? ''));
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $authToken',
    };
    try {
      final response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        return response ;
      } else {
        print('Error en la solicitud: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error al hacer la solicitud: $e');
      return null;
    }
  }
}
