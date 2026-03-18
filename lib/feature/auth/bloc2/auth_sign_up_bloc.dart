import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_sign_up_event.dart';

part 'auth_sign_up_state.dart';

class AuthSignUpBloc extends Bloc<AuthSignUpBlocEvent, AuthSignUpState> {
  AuthSignUpBloc() : super(AuthSignUpState()) {
    on<PasswordChangedSign>((event, emit) {
      emit(state.zamenaNujnixPoley(passwordValueSign: event.passwordValueSign));

    });
    on<EmailChangedSign>((event, emit) {
      emit(state.zamenaNujnixPoley(emailValueSign: event.emailValueSign));
    });
    on<NameChangedSign>((event,emit){
      emit(state.zamenaNujnixPoley(
        nameValueSign: event.nameValueSign,
      ));
    });

    on<AuthSubmitSignUp>((event, emit) {
      emit(
        state.zamenaNujnixPoley(
          emailErrorTextSign: null,
          passwordErrorTextSign: null,
          passwordValueSign: state.passwordValueSign
        ),
      );
      if (state.emailValueSign == null || state.emailValueSign!.isEmpty) {
        emit(
          state.zamenaNujnixPoley(
            emailErrorTextSign: 'Заполните поля',
            checkEmailStatusSignUp: EmailCheckStatusSignUp.notValid,
          ),
        );
      } else {
        emit(
          state.zamenaNujnixPoley(
            emailErrorTextSign: null,
            checkEmailStatusSignUp: EmailCheckStatusSignUp.valid,
          ),
        );
      }
      if (state.nameValueSign == null || state.nameValueSign!.isEmpty) {
        emit(
          state.zamenaNujnixPoley(
          nameErrorTextSign: 'Заполните поля',
            checkNameStatusSignUp: NameCheckStatusSignUp.notValid,
          )
        );
      }
      else{
        emit(
          state.zamenaNujnixPoley(
            nameErrorTextSign: null,
          checkNameStatusSignUp: NameCheckStatusSignUp.valid,
          )
        );
      }
      if (state.passwordValueSign == null || state.passwordValueSign!.isEmpty) {
        emit(state.zamenaNujnixPoley(
          passwordErrorTextSign: 'Заполните поля',
          checkPasswordStatusSignUp: PasswordCheckStatusSignUp.notValid,
        ));
      } else if (state.passwordValueSign!.length <6) {
        emit (
            state.zamenaNujnixPoley(
              passwordErrorTextSign: 'меньше 6',
              checkPasswordStatusSignUp: PasswordCheckStatusSignUp.notValid,
            ),
        );
      }
      else {
        emit(state.zamenaNujnixPoley(
          passwordValueSign: state.passwordValueSign,
          passwordErrorTextSign: null,
          checkPasswordStatusSignUp: PasswordCheckStatusSignUp.valid,
        ));
      }
      emit(state.zamenaNujnixPoley(
        emailErrorTextSign: state.emailErrorTextSign,
        nameErrorTextSign: state.nameErrorTextSign,
        passwordErrorTextSign: state.passwordErrorTextSign,
        checkEmailStatusSignUp: state.checkEmailStatusSignUp,
        checkNameStatusSignUp: state.checkNameStatusSignUp,
        checkPasswordStatusSignUp: state.checkPasswordStatusSignUp,
      ));

    });
  }
}
