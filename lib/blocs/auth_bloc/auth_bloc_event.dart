part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocEvent {}

class LoginEvent extends AuthBlocEvent {
  final LoginModel loginModel;

  LoginEvent({required this.loginModel});
}
