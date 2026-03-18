part of 'auth_sign_up_bloc.dart';



enum PasswordCheckStatusSignUp { initial,  notValid, valid, }
enum EmailCheckStatusSignUp {initial,notValid,valid}
enum NameCheckStatusSignUp {initial , notValid, valid}
// class AuthSignUpBlocState{}
// class AuthSignUpBlocInitial extends AuthSignUpBlocState{}

final class AuthSignUpState {
  final String? passwordValueSign;
  final String? passwordErrorTextSign;
  final PasswordCheckStatusSignUp? checkPasswordStatusSignUp;
  final String? emailValueSign;
  final EmailCheckStatusSignUp?  checkEmailStatusSignUp;
  final String? emailErrorTextSign;
  final String? nameValueSign;
  final String? nameErrorTextSign;
  final NameCheckStatusSignUp? checkNameStatusSignUp;

  const AuthSignUpState({
    this.passwordValueSign,
    this.emailValueSign,
    this.checkPasswordStatusSignUp,
    this.passwordErrorTextSign,
    this.checkEmailStatusSignUp,
    this.emailErrorTextSign,
    this.nameValueSign,
    this.nameErrorTextSign,
    this.checkNameStatusSignUp,
  });

AuthSignUpState zamenaNujnixPoley({
  String? passwordValueSign,
  String? passwordErrorTextSign,
  PasswordCheckStatusSignUp? checkPasswordStatusSignUp,
  String? emailValueSign,
  EmailCheckStatusSignUp? checkEmailStatusSignUp,
  String? emailErrorTextSign,
  String? nameValueSign,
  String? nameErrorTextSign,
  NameCheckStatusSignUp? checkNameStatusSignUp,
}) {
  return AuthSignUpState(
    passwordValueSign: passwordValueSign ?? this.passwordValueSign,
    passwordErrorTextSign: passwordErrorTextSign ?? this.passwordErrorTextSign,
    checkEmailStatusSignUp:checkEmailStatusSignUp ?? this.checkEmailStatusSignUp,
    checkPasswordStatusSignUp: checkPasswordStatusSignUp ?? this.checkPasswordStatusSignUp,
    emailValueSign: emailValueSign ?? this.emailValueSign,
    emailErrorTextSign: emailErrorTextSign ?? this.emailErrorTextSign,
    nameValueSign: nameValueSign ?? this.nameValueSign,
    nameErrorTextSign: nameErrorTextSign ?? this.nameErrorTextSign,
    checkNameStatusSignUp: checkNameStatusSignUp ?? this.checkNameStatusSignUp,
  );

}
}
