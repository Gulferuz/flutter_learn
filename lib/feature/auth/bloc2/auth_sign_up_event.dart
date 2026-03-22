part of 'auth_sign_up_bloc.dart';

class AuthSignUpEvent {} // родительский класс

class AuthSubmitSignUp extends AuthSignUpEvent {} // кнопка наследуется от родительского класса

class PasswordChangedSign extends AuthSignUpEvent { // поле изменений тоже дочерний класс наследуется от родительского класса
  final String? passwordValueSign;  // переменная которую мы создали

  PasswordChangedSign(this.passwordValueSign); // конструктор
}
class EmailChangedSign extends AuthSignUpEvent{
  final String? emailValueSign;
  EmailChangedSign(this.emailValueSign);
}
class NameChangedSign extends AuthSignUpEvent{
  final String? nameValueSign;
  NameChangedSign(this.nameValueSign);
}

// class AuthSignUpBlocInitial extends AuthSignUpBlocEvent{}
// class AuthSignUpBlocState extends AuthSignUpBlocEvent{}


