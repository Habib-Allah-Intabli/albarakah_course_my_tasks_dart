// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:task_22_full_design/core/service/user_session_service.dart';

part 'user_session_event.dart';
part 'user_session_state.dart';

class UserSessionBloc extends Bloc<UserSessionEvent, UserSessionState> {
  UserSessionService userSessionService;
  UserSessionBloc(this.userSessionService) : super(UserSessionInitial()) {
    on<UserSessionEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 3));
      if (userSessionService.isFirstTimeOpen()) {
        emit(UserFirstTimeState());
      } else {
        if (userSessionService.isAuthenticated()) {
          emit(UserAuthenticated());
        } else {
          emit(UserUnAuth());
        }
      }
    });
    on<Login>((event, emit) async {
      await userSessionService.saveToken(
        accessToken:
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJlbWlseXMiLCJlbWFpbCI6ImVtaWx5LmpvaG5zb25AeC5kdW1teWpzb24uY29tIiwiZmlyc3ROYW1lIjoiRW1pbHkiLCJsYXN0TmFtZSI6IkpvaG5zb24iLCJnZW5kZXIiOiJmZW1hbGUiLCJpbWFnZSI6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pY29uL2VtaWx5cy8xMjgiLCJpYXQiOjE3NzIyODIyODcsImV4cCI6MTc3MjI4NTg4N30.AAXkRGhISIEzgCfqLNqJWkYHi6FAIm6qOiOouF5pHmE",
      );
      emit(UserAuthenticated());
    });
    on<CompleteOnboarding>((event, emit) {
      userSessionService.completeOnboarding();
      emit(UserUnAuth());
    });
  }
}
