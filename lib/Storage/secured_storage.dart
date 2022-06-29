import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Securestorage {
  static const FlutterSecureStorage storage = FlutterSecureStorage();
  static const userid = 'userid';

  static Future<int> storeloginInfo(dynamic loginReturnData) async {
    try {
      await storage.write(key: "userid", value: loginReturnData["_id"]);
      await storage.write(
          key: "first_name", value: loginReturnData["first_name"]);
      await storage.write(key: "token", value: loginReturnData["token"]);
      return 1;
    } catch (e) {
      return 0;
    }
  }

  static Future<String?> getToken() async {
    String? token = await storage.read(key: "token");
    if (userid == null) {
      return null;
    } else {
      // print(userid["token"]); return "token";
      return token;
    }
  }

  static Future<int?> removeToken() async {
    try {
      await storage.deleteAll();
      print(Securestorage.getToken());
      return 1;
    } catch (e) {
      print("Something is wrong");
      return 0;
    }
  }
}
