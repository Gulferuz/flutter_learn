import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_sign_up_event.dart';

part 'auth_sign_up_state.dart';

class AuthSignUpBloc extends Bloc<AuthSignUpEvent, AuthSignUpState> {
  AuthSignUpBloc() : super(AuthSignUpState()) {
    on<PasswordChangedSign>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          passwordValueSign: event.passwordValueSign,
          passwordErrorTextSign: null,
        ),
      );
    });
    on<EmailChangedSign>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          emailValueSign: event.emailValueSign,
          emailErrorTextSign: null,
        ),
      );
    });
    on<NameChangedSign>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          nameValueSign: event.nameValueSign,
          nameErrorTextSign: null,
        ),
      );
    });

    on<AuthSubmitSignUp>((event, emit) {
      String? emailErrorTextSign;
      String? nameError;
      String? passwordError;

      var emailStatus = EmailCheckStatusSignUp.valid;
      var nameStatus = NameCheckStatusSignUp.valid;
      var passwordStatus = PasswordCheckStatusSignUp.valid;
      var statusSignUp = AuthSignUpStatus.initial;

      // Email
      if (state.emailValueSign == null || state.emailValueSign!.isEmpty) {
        emailErrorTextSign = 'Заполните поле';
        emailStatus = EmailCheckStatusSignUp.notValid;
        print(emailErrorTextSign);
      }

      // Name
      if (state.nameValueSign == null || state.nameValueSign!.isEmpty) {
        print('HERE');
        nameError = 'Заполните поле';
        nameStatus = NameCheckStatusSignUp.notValid;
        print(nameError);
      }

      // Password
      final password = state.passwordValueSign ?? '';

      if (password.isEmpty) {
        passwordError = 'Заполните поле';
        passwordStatus = PasswordCheckStatusSignUp.notValid;
      } else if (!isValidPassword(password)) {
        passwordError = 'Пароль слишком слабый';
        passwordStatus = PasswordCheckStatusSignUp.notValid;
      } else {
        passwordError = null;
        passwordStatus = PasswordCheckStatusSignUp.valid;
      }

      if (emailStatus == EmailCheckStatusSignUp.valid &&
          passwordStatus == PasswordCheckStatusSignUp.valid &&
          nameStatus == NameCheckStatusSignUp.valid) {
        statusSignUp = AuthSignUpStatus.success;
      }

      // Один emit в конце
      emit(
        state.zamenaNujnixPoley(
          emailErrorTextSign: emailErrorTextSign,
          checkEmailStatusSignUp: emailStatus,
          nameErrorTextSign: nameError,
          checkNameStatusSignUp: nameStatus,
          passwordErrorTextSign: passwordError,
          checkPasswordStatusSignUp: passwordStatus,
          statusSignUp: statusSignUp,
        ),
      );
    });
  }
}

bool isValidPassword(String password) {
  final regExp = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$');
  return regExp.hasMatch(password);
}
