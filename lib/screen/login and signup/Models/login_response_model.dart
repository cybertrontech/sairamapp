
import 'dart:convert';

import 'package:tunesevenui/screen/login%20and%20signup/Models/login_request_model.dart';

LoginRequestModel loginRequestModel(String str)=>
    LoginRequestModel.fromJson(json.decode(str));



class LoginResponseModel {
  String? userId;
  String? image;
  String? firstName;
  String? token;

  LoginResponseModel({this.userId, this.image, this.firstName, this.token});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    image = json['image'];
    firstName = json['first_name'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['image'] = this.image;
    data['first_name'] = this.firstName;
    data['token'] = this.token;
    return data;
  }
}
