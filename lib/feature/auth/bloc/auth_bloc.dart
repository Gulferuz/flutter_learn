import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {

    //Password
    on<PasswordChanged>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          passwordValue: event.passwordValue,
          passwordErrorTxt: null,
        ),
      );
    });
    //Email
    on<EmailChanged>((event, emit) {
      emit(
        state.zamenaNujnixPoley(emailValue: event.emailValue, emailError: null),
      );
    });
    //Name
    on<NameChangedSign>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          nameValueSign: event.nameValueSign,
          nameErrorTextSign: null,
        ),
      );
    });

    on<AuthSubmit>((event, emit) {
      String? emailError;
      String? passwordErrorTxt;

      var checkPasswordStatus = PasswordCheckStatus.valid;
      var checkEmailStatus = EmailCheckStatus.valid;
      var status = AuthStatus.initial;

      //Email
      if (state.emailValue == null || state.emailValue!.isEmpty) {
        emailError = 'Заполните поля';
        checkEmailStatus = EmailCheckStatus.notValid;
      }

      final passwordLogin = state.passwordValue ?? '';
      //password
      if (passwordLogin.isEmpty) {
        passwordErrorTxt = 'Заполните поля';
        checkPasswordStatus = PasswordCheckStatus.notValid;
      } else if (!isValidPassword(passwordLogin)) {
        passwordErrorTxt = 'Пароль слишком слабый';
        checkPasswordStatus = PasswordCheckStatus.notValid;
      } else {
        passwordErrorTxt = null;
        checkPasswordStatus = PasswordCheckStatus.valid;
      }
      if (checkEmailStatus == EmailCheckStatus.valid &&
          checkPasswordStatus == PasswordCheckStatus.valid) {
        status = AuthStatus.success;
      }

      emit(
        state.zamenaNujnixPoley(
          emailError: emailError,
          passwordErrorTxt: passwordErrorTxt,
          checkPasswordStatus: checkPasswordStatus,
          checkEmailStatus: checkEmailStatus,
          status: status,
        ),
      );
    });

    on<AuthSignUpSubmit>((event, emit) {
      String? emailError;
      String? nameErrorTextSign;
      String? passwordErrorTxt;

      var emailStatus = EmailCheckStatus.valid;
      var nameStatus = NameCheckStatusSignUp.valid;
      var passwordStatus = PasswordCheckStatus.valid;
      var status = AuthStatus.initial;

      // Email
      if (state.emailValue == null || state.emailValue!.isEmpty) {
        emailError = 'Заполните поле';
        emailStatus = EmailCheckStatus.notValid;
      }

      // Name
      if (state.nameValueSign == null || state.nameValueSign!.isEmpty) {
        print('HERE');
        nameErrorTextSign = 'Заполните поле';
        nameStatus = NameCheckStatusSignUp.notValid;
      }

      // Password
      final password = state.passwordValue ?? '';

      if (password.isEmpty) {
        passwordErrorTxt = 'Заполните поле';
        passwordStatus = PasswordCheckStatus.notValid;
      } else if (!isValidPassword(password)) {
        passwordErrorTxt = 'Пароль слишком слабый';
        passwordStatus = PasswordCheckStatus.notValid;
      } else {
        passwordErrorTxt = null;
        passwordStatus = PasswordCheckStatus.valid;
      }

      if (emailStatus == EmailCheckStatus.valid &&
          passwordStatus == PasswordCheckStatus.valid &&
          nameStatus == NameCheckStatusSignUp.valid) {
        status = AuthStatus.success;
      }

      // Один emit в конце
      emit(
        state.zamenaNujnixPoley(
          emailError: emailError,
          checkEmailStatus: emailStatus,
          nameErrorTextSign: nameErrorTextSign,
          checkNameStatusSignUp: nameStatus,
          passwordErrorTxt: passwordErrorTxt,
          checkPasswordStatus: passwordStatus,
          status: status,
        ),
      );
    });
    //
    on<AuthForgotSubmit>((event, emit) {
      String? emailError;
      var checkEmailStatus = EmailCheckStatus.valid;
      var status = AuthStatus.initial;

      if (state.emailValue == null || state.emailValue!.isEmpty) {
        emailError = 'Заполните поля';
        checkEmailStatus = EmailCheckStatus.notValid;
      } else {
        emailError = null;
        checkEmailStatus = EmailCheckStatus.valid;
      }
      if (checkEmailStatus == EmailCheckStatus.valid) {
        status = AuthStatus.success;
      }
      emit(
        state.zamenaNujnixPoley(
          emailError: emailError,
          checkEmailStatus: checkEmailStatus,
          status: status,
        ),
      );
    });
  }
}

bool isValidPassword(String passwordLogin) {
  final regExp = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
  return regExp.hasMatch(passwordLogin);
}
