part of 'auth_bloc.dart';

enum PasswordCheckStatus { initial, notValid, valid }

enum EmailCheckStatus { initial, notValid, valid }

enum NameCheckStatusSignUp { initial, notValid, valid }

enum AuthStatus { initial, loading, success, error }

final class AuthState {
  final String? passwordValue;
  final String? passwordErrorTxt;
  final PasswordCheckStatus? checkPasswordStatus;
  final String? emailValue;
  final String? emailError;
  final EmailCheckStatus? checkEmailStatus;
  final AuthStatus status;
  final String? nameValueSign;
  final String? nameErrorTextSign;
  final NameCheckStatusSignUp? checkNameStatusSignUp;


  const AuthState({
    this.passwordValue,
    this.passwordErrorTxt,
    this.checkPasswordStatus,
    this.emailValue,
    this.emailError,
    this.checkEmailStatus,
    this.status = AuthStatus.initial,
    this.nameValueSign,
    this.nameErrorTextSign,
    this.checkNameStatusSignUp,

  });

  AuthState zamenaNujnixPoley({
    String? passwordValue,
    String? passwordErrorTxt,
    PasswordCheckStatus? checkPasswordStatus,
    String? emailValue,
    String? emailError,
    EmailCheckStatus? checkEmailStatus,
    AuthStatus? status,
    String? nameValueSign,
    String? nameErrorTextSign,
    NameCheckStatusSignUp? checkNameStatusSignUp,
  }) {
    return AuthState(
      passwordValue: passwordValue ?? this.passwordValue,
      passwordErrorTxt: passwordErrorTxt,
      checkPasswordStatus: checkPasswordStatus ?? this.checkPasswordStatus,
      emailValue: emailValue ?? this.emailValue,
      emailError: emailError,
      checkEmailStatus: checkEmailStatus ?? this.checkEmailStatus,
      status: status ?? this.status,
      nameValueSign: nameValueSign ?? this.nameValueSign,
      nameErrorTextSign: nameErrorTextSign,
      checkNameStatusSignUp:
      checkNameStatusSignUp ?? this.checkNameStatusSignUp,

    );
  }
}
