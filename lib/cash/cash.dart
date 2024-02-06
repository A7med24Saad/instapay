import 'package:shared_preferences/shared_preferences.dart';

class cash {
  static String NameKey = 'Name_key';
  static String Passkey = 'Pass_key';
  static String BankKey = 'bank';
  static List<String> banks = [];
  static store(String key, String path) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(key, path);
  }

  static Future<String> get(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }

  static storebanks(String key, List<String> path) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, path);
  }

  static Future<List<String>> getbanks(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ?? [];
  }
}
