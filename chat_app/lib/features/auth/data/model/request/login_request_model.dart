class LoginRequestModel {
   String email;
   String password;

  LoginRequestModel({required this.email, required this.password});
  Map<dynamic, dynamic>toJson() => {'email': email, 'password': password};
}