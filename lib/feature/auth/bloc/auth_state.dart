part of 'auth_bloc.dart';

enum PasswordCheckStatus { initial, notValid, valid }

enum EmailCheckStatus { initial, notValid, valid }

enum AuthStatus { initial, loading, success, error }

final class AuthState {
  final String? passwordValue;
  final String? passwordErrorTxt;
  final PasswordCheckStatus? checkPasswordStatus;
  final String? emailValue;
  final String? emailError;
  final EmailCheckStatus? checkEmailStatus;
  final AuthStatus status;

  const AuthState({
    this.passwordValue,
    this.passwordErrorTxt,
    this.checkPasswordStatus,
    this.emailValue,
    this.emailError,
    this.checkEmailStatus,
    this.status = AuthStatus.initial,
  });

  AuthState zamenaNujnixPoley({
    String? passwordValue,
    String? passwordErrorTxt,
    PasswordCheckStatus? checkPasswordStatus,
    String? emailValue,
    String? emailError,
    EmailCheckStatus? checkEmailStatus,
    AuthStatus? status,
  }) {
    return AuthState(
      passwordValue: passwordValue ?? this.passwordValue,
      passwordErrorTxt: passwordErrorTxt,
      checkPasswordStatus: checkPasswordStatus ?? this.checkPasswordStatus,
      emailValue: emailValue ?? this.emailValue,
      emailError: emailError,
      checkEmailStatus: checkEmailStatus ?? this.checkEmailStatus,
      status: status ?? this.status,
    );
  }
}
