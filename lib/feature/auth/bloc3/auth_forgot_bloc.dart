import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_forgot_event.dart';

part 'auth_forgot_state.dart';

class AuthForgotBloc extends Bloc<AuthForgotEvent, AuthForgotState> {
  AuthForgotBloc() : super(AuthForgotState()) {
    on<EmailChangedForgot>((event, emit) {
      emit(
        state.copyWith(
          emailValueForgot: event.emailValueForgot,
          emailErrorForgot: null,
        ),
      );
    });
    on<AuthSubmitForgot>((event, emit) {
      String? emailErrorForgot;
      var checkForgotStatus = EmailForgotStatus.valid;

      if (state.emailValueForgot == null || state.emailValueForgot!.isEmpty) {
        emailErrorForgot = 'Заполните поля';
        checkForgotStatus = EmailForgotStatus.notValid;
      } else {
        emailErrorForgot = null;
        checkForgotStatus = EmailForgotStatus.valid;
      }
      emit(
        state.copyWith(
          emailErrorForgot: emailErrorForgot,
          checkForgotStatus: checkForgotStatus,
        ),
      );
    });
  }
}
