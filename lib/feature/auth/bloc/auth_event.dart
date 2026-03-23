part of 'auth_bloc.dart';

class AuthEvent {} // корень (все события авторизации (родительский класс)
class AuthSubmit extends AuthEvent {} // конкретное действие он является наследником (дочерний класс с действием )
class AuthSignUpSubmit extends AuthEvent {} // конкретное действие он является наследником (дочерний класс с действием )
class AuthForgotSubmit extends AuthEvent {} // конкретное действие он является наследником (дочерний класс с действием )

class PasswordChanged extends AuthEvent { // тоже наследник с данными (дочерний класс с данными чтобы заполнить наше именно поле
  PasswordChanged(this.passwordValue); // это конструктор

  final String passwordValue; // поле данных то есть переменная
}
class EmailChanged extends AuthEvent{
  EmailChanged(this.emailValue);

  final String emailValue;
}
class NameChangedSign extends AuthEvent{
  final String? nameValueSign;
  NameChangedSign(this.nameValueSign);
}

