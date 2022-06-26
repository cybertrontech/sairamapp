 import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class securestorage{
  static const FlutterSecureStorage storage =FlutterSecureStorage();
  static const userid = 'userid';

  static Future<int> storeloginId(String loginReturnData)async{
    try{
      await storage.write(key: "userId", value: loginReturnData);
      return 1;
    }catch(e){
      return 0;
    }
  }

  static Future<String?>gettoken()async{
    String? userid =await storage.read(key: "userid");
    if (userid==null){
      return null;
    }
    Map<String,dynamic>s=jsonDecode(userid);
    return s['token'];
  }


 }