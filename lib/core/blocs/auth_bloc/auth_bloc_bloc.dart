import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_22_full_design/models/login_model.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(AuthBlocInitial()) {
    on<AuthBlocEvent>((event, emit) {});
  }
}
