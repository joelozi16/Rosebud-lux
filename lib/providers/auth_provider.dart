import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String? _userId;
  String? _userEmail;
  String? _userName;
  String? _userProfileImage;

  bool get isAuthenticated => _isAuthenticated;
  String? get userId => _userId;
  String? get userEmail => _userEmail;
  String? get userName => _userName;
  String? get userProfileImage => _userProfileImage;

  Future<void> login(String email, String password) async {
    try {
      // TODO: Implement Firebase authentication
      _isAuthenticated = true;
      _userId = 'user_123';
      _userEmail = email;
      _userName = email.split('@')[0];
      notifyListeners();
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> signup(String email, String password, String fullName) async {
    try {
      // TODO: Implement Firebase registration
      _isAuthenticated = true;
      _userId = 'user_123';
      _userEmail = email;
      _userName = fullName;
      notifyListeners();
    } catch (e) {
      throw Exception('Signup failed: $e');
    }
  }

  Future<void> logout() async {
    try {
      // TODO: Implement Firebase logout
      _isAuthenticated = false;
      _userId = null;
      _userEmail = null;
      _userName = null;
      notifyListeners();
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      // TODO: Implement Firebase password reset
      notifyListeners();
    } catch (e) {
      throw Exception('Password reset failed: $e');
    }
  }
}
