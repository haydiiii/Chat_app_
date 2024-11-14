import 'dart:developer';

import 'package:chat_app/core/constants/constatnts.dart';
import 'package:chat_app/features/auth/data/model/request/login_request_model.dart';
import 'package:chat_app/features/auth/data/repo/auth_endpoints.dart';
import 'package:http/http.dart' as http;

class AuthRepo {
 static  Future<bool> login(LoginRequestModel loginModel) async {
    try {
  var url = Uri.parse(AppConstants.baseUrl + AuthEndpoints.login);
  var response = await http.post(url, body: loginModel.toJson());
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
} on Exception catch (e) {
  log(e.toString());
  return false;
  }
  }
}
