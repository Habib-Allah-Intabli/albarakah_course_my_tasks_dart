part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocState {}

final class AuthBlocInitial extends AuthBlocState {}

final class AuthInitial extends AuthBlocState {}

final class AuthSuccess extends AuthBlocState {}

final class AuthLoading extends AuthBlocState {}

final class AuthError extends AuthBlocState {
  final String errorMessage;

  AuthError({required this.errorMessage});
}
