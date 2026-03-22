part of 'auth_forgot_bloc.dart';

enum EmailForgotStatus { initial, notValid, valid }

final class AuthForgotState {
  final String? emailValueForgot;
  final String? emailErrorForgot;
  final EmailForgotStatus? checkForgotStatus;

  const AuthForgotState({
    this.emailValueForgot,
    this.emailErrorForgot,
    this.checkForgotStatus,
  });

  AuthForgotState copyWith({
    String? emailValueForgot,
    String? emailErrorForgot,
    EmailForgotStatus? checkForgotStatus,
  }) {
    return AuthForgotState(
      emailValueForgot: emailValueForgot ?? this.emailValueForgot,
      emailErrorForgot: emailErrorForgot,
      checkForgotStatus: checkForgotStatus ?? this.checkForgotStatus,
    );
  }
}
