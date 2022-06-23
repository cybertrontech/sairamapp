
import 'dart:convert';

RegisterResponseModel loginRequestModel(String str)=>
    RegisterResponseModel.fromJson(json.decode(str));


class RegisterResponseModel {
  String? message;
  Data? data;

  RegisterResponseModel({this.message, this.data});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? firstName;
  String? email;
  String? userId;

  Data({this.firstName, this.email, this.userId});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    email = json['email'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['email'] = this.email;
    data['user_id'] = this.userId;
    return data;
  }
}

