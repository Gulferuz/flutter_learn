import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/feature/auth/bloc2/auth_sign_up_bloc.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    // конструктор и начальное состояние
    on<PasswordChanged>((event, emit) {
      // это слушатель
      emit(
        state.zamenaNujnixPoley(
          passwordValue: event.passwordValue,
          passwordErrorTxt: null,
        ),
      );
    });
    on<EmailChanged>((event, emit) {
      emit(
        state.zamenaNujnixPoley(emailValue: event.emailValue, emailError: null),
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
      print(passwordErrorTxt);
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
  }
}

bool isValidPassword(String passwordLogin) {
  final regExp = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
  return regExp.hasMatch(passwordLogin);
}
