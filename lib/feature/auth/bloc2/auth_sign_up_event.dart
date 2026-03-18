part of 'auth_sign_up_bloc.dart';

class AuthSignUpBlocEvent {} // родительский класс

class AuthSubmitSignUp extends AuthSignUpBlocEvent {} // кнопка наследуется от родительского класса

class PasswordChangedSign extends AuthSignUpBlocEvent { // поле изменений тоже дочерний класс наследуется от родительского класса
  final String? passwordValueSign;  // переменная которую мы создали

  PasswordChangedSign(this.passwordValueSign); // конструктор
}
class EmailChangedSign extends AuthSignUpBlocEvent{
  final String? emailValueSign;
  EmailChangedSign(this.emailValueSign);
}
class NameChangedSign extends AuthSignUpBlocEvent{
  final String? nameValueSign;
  NameChangedSign(this.nameValueSign);
}

// class AuthSignUpBlocInitial extends AuthSignUpBlocEvent{}
// class AuthSignUpBlocState extends AuthSignUpBlocEvent{}


