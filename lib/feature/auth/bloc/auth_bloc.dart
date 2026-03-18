import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    // конструктор и начальное состояние
    on<PasswordChanged>((event, emit) {
      // это слушатель
      emit(state.zamenaNujnixPoley(passwordValue: event.passwordValue));
      on<EmailChanged>((event, emit) {
        emit(state.zamenaNujnixPoley(emailValue: event.emailValue));
      });
    });
    on<AuthSubmit>((event, emit) {
      emit(state.zamenaNujnixPoley(
        passwordErrorTxt: null,
        emailError: null,
      ));
      if (state.emailValue == null || state.emailValue!.isEmpty) {
        emit(
          state.zamenaNujnixPoley(
            // emailValue: state.emailValue,
            emailError: 'Заполните поля',
            checkEmailStatus: EmailCheckStatus.notValid,
          ),
        );
      } else {
        emit(
          state.zamenaNujnixPoley(
            // emailValue: state.emailValue,
            emailError: null,
            checkEmailStatus: EmailCheckStatus.valid,
          ),
        );
      }
      if (state.passwordValue == null || state.passwordValue!.isEmpty) {
        emit(
          state.zamenaNujnixPoley(
            passwordErrorTxt: 'Заполние поля',
            checkPasswordStatus: PasswordCheckStatus.notValid,
          ),
        );
      } else {
        if (state.passwordValue != null && state.passwordValue!.isEmpty && state.passwordValue!.length < 6) {
          emit(
            state.zamenaNujnixPoley(
              passwordErrorTxt: 'меньше 6 ',
              checkPasswordStatus: PasswordCheckStatus.notValid,
            ),
          );
        } else {
          if (state.passwordValue != null && state.passwordValue!.isEmpty && state.passwordValue!.length > 6) {
            emit(
              state.zamenaNujnixPoley(
                passwordErrorTxt: null,
                checkPasswordStatus: PasswordCheckStatus.valid,
              ),
            );
          }
        }
      }
    });
  }
}
