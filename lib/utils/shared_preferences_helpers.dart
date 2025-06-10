import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPreferencesHelper {
  static const String _isLoggedInKey = 'isLoggedIn';
  static const String _ssUserName = "ssUserName";
  static const String _jwtTokenKey = "jwtToken";
  static const String _loginDateKey = "loginDate";

  static Future<void> setIsLoggedIn(bool isLoggedIn) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, isLoggedIn);
  }

  static Future<bool> getIsLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  static Future<void> setUsername(String username) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_ssUserName, username);
  }

  static Future<String?> getUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_ssUserName);
  }

  // JWT Token methods
  static Future<void> setJwtToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_jwtTokenKey, token);
  }

  static Future<String?> getJwtToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_jwtTokenKey);
  }

  // Login date methods
  static Future<void> setLoginDate(List<int> loginDate) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String loginDateJson = jsonEncode(loginDate);
    await prefs.setString(_loginDateKey, loginDateJson);
  }

  static Future<List<int>?> getLoginDate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? loginDateJson = prefs.getString(_loginDateKey);
    if (loginDateJson != null) {
      return List<int>.from(jsonDecode(loginDateJson));
    }
    return null;
  }

  static Future<void> clearAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}