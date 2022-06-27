 import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Securestorage{
  static const FlutterSecureStorage storage =FlutterSecureStorage();
  static const userid = 'userid';

  static Future<int> storeloginId(String loginReturnData)async{
    try{
      await storage.write(key: "userid", value: loginReturnData);
      return 1;
    }catch(e){
      return 0;
    }
  }

  static Future<String?>getToken()async{
    String? userid =await storage.read(key: "userid");
    if (userid==null){
      return null;
    }
    Map<String,dynamic>s=jsonDecode(userid);
    return s['token'];
  }


  static Future<int?> removeToken()async{
    try{
      await storage.deleteAll();
      print(Securestorage.getToken());
      return 1;
    }catch(e)
    {
      print("Something is wrong");
      return 0;
    }
  }
 }