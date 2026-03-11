import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_22_full_design/blocs/auth_bloc/auth_bloc_bloc.dart';
import 'package:task_22_full_design/blocs/user_session_bloc/user_session_bloc.dart';
import 'package:task_22_full_design/core/config/di.dart';
import 'package:task_22_full_design/core/service/user_session_service.dart';
import 'package:task_22_full_design/services/auth_service.dart';
import 'package:task_22_full_design/views/login_view.dart';
import 'package:task_22_full_design/views/nav_bar_view.dart';
import 'package:task_22_full_design/views/onboarding_view.dart';
import 'package:task_22_full_design/views/splash_view.dart';

Future<void> main() async {
  // final prefs = await SharedPreferences.getInstance();
  // await prefs.clear();
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              UserSessionBloc(getIt.get<UserSessionService>())
                ..add(UserSessionCheckStatus()),
        ),
        BlocProvider(create: (context) => AuthBloc(getIt.get<AuthService>())),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            home: BlocBuilder<UserSessionBloc, UserSessionState>(
              builder: (context, state) {
                switch (state) {
                  case UserSessionInitial():
                    return SplashView();
                  case UserFirstTimeState():
                    return OnboardingView();
                  case UserAuthenticated():
                    return NavBarView();
                  case UserUnAuth():
                    return LoginView();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
