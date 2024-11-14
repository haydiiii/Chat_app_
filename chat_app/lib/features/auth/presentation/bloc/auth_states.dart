class AuthStates {}
class AuthInitial extends AuthStates {}
class LoginSuccess extends AuthStates {}
class LoginError extends AuthStates {
  final String error;
  LoginError(this.error);
}
class LoginLoading extends AuthStates {}