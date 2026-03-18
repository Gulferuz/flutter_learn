part of 'auth_bloc.dart';

enum PasswordCheckStatus { initial, notValid, valid }
enum EmailCheckStatus {initial,notValid,valid}
final class AuthState {
  final String? passwordValue;
  final String? passwordErrorTxt;
  final PasswordCheckStatus? checkPasswordStatus;
  final String? emailValue;
  final String? emailError;
  final EmailCheckStatus? checkEmailStatus;

  const AuthState({
    this.passwordValue,
    this.passwordErrorTxt,
    this.checkPasswordStatus,
    this.emailValue,
    this.emailError,
    this.checkEmailStatus,
  });

  AuthState zamenaNujnixPoley({
    String? passwordValue,
    String? passwordErrorTxt,
    PasswordCheckStatus? checkPasswordStatus,
    String? emailValue,
    String? emailError,
    EmailCheckStatus? checkEmailStatus,
  }) {
    return AuthState(
      passwordValue: passwordValue ?? passwordValue,
      passwordErrorTxt: passwordErrorTxt ?? passwordErrorTxt,
      checkPasswordStatus: checkPasswordStatus ?? checkPasswordStatus,
      emailValue: emailValue ?? emailValue,
      emailError: emailError ?? emailError,
      checkEmailStatus: checkEmailStatus ?? checkEmailStatus,

    );
  }
}








