
class LoginResponseModel {
  final String? responseToken;
  final String? error;
  LoginResponseModel({this.responseToken, this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json){
    return LoginResponseModel(responseToken: json["responseToken"] != null ? json["responseToken"] : "", error: json["error"] != null? json["error"] : "",);
  }

}
class LoginRequestModel {
  String? username;
  String? password;

  LoginRequestModel({
    this.username,
    this.password,
});

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {'Username' : username, 'Password' : password};
    return map;
  }
}
