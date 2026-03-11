// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:task_22_full_design/models/login_model.dart';
import 'package:task_22_full_design/services/auth_service.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthService authService;
  AuthBloc(this.authService) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      bool isLogged = await authService.login(loginModel: event.loginModel);
      emit(
        isLogged
            ? AuthSuccess()
            : AuthError(
                errorMessage:
                    "failed to login, plesae check your information and try again...",
              ),
      );
    });
  }
}
