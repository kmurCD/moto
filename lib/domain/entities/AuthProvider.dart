import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _authToken;

  // Método para establecer el token
  void setAuthToken(String token) {
    _authToken = token;
    notifyListeners();
  }

  // Método para obtener el token
  String? getAuthToken() {
    return _authToken;
  }
}