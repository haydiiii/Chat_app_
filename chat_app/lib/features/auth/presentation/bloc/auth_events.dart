import 'package:chat_app/features/auth/data/model/request/login_request_model.dart';

class AuthEvents {}

class LoginEvent extends AuthEvents {
  final LoginRequestModel loginModel;

  LoginEvent({required this.loginModel});
}
