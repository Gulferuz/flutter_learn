part of 'auth_forgot_bloc.dart';

class AuthForgotEvent {

}
class AuthSubmitForgot extends AuthForgotEvent{}
class EmailChangedForgot extends AuthForgotEvent{
  final String? emailValueForgot;
  EmailChangedForgot(this.emailValueForgot);
}

