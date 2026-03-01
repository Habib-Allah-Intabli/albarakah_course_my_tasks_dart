import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_22_full_design/core/blocs/user_session_bloc/user_session_bloc.dart';
import 'package:task_22_full_design/core/config/di.dart';
import 'package:task_22_full_design/core/service/user_session_service.dart';
import 'package:task_22_full_design/views/home_view.dart';
import 'package:task_22_full_design/views/login_view.dart';
import 'package:task_22_full_design/views/onboarding_view.dart';
import 'package:task_22_full_design/views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserSessionBloc(getIt<UserSessionService>())
            ..add(UserSessionCheckStatus()),
      child: MaterialApp(
        home: BlocBuilder<UserSessionBloc, UserSessionState>(
          builder: (context, state) {
            switch (state) {
              case UserSessionInitial():
                return SplashView();
              case UserFirstTimeState():
                return OnboardingView();
              case UserAuthenticated():
                return HomeView();
              case UserUnAuth():
                return LoginView();
            }
          },
        ),
      ),
    );
  }
}
