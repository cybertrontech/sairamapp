import 'dart:convert';

import 'package:http/http.dart' as http;



class ApiService {

  Future userLogin(String email,String password)async{
    final loginUrl =Uri.parse("https://sairambackend.herokuapp.com/login");
    final response = await http.post(loginUrl,
        body:{
      'yugalkhati570@gmail.com' : email,
      '1234' : password,
    });
    print(response.statusCode);
    print(response.body);
    return jsonDecode(response.body);
  }
}