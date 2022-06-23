class RegisterRequestModel {
  String? email;
  String? password;
  String? userId;

  RegisterRequestModel({this.email, this.password, this.userId});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    userId = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['user_id'] = this.userId;
    return data;
  }
}