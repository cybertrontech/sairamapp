 import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage{
static final storage = FlutterSecureStorage();
static const keyEmail='email';
static Future setUsername(String Username) async=>
  await storage.write(key: keyEmail, value: Username);

  static Future<String?> getEmailname() async=>
      await storage.read(key: keyEmail);


 }