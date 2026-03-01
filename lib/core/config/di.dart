import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_22_full_design/core/service/user_session_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  
  getIt.registerSingleton(await SharedPreferences.getInstance());

  getIt.registerSingleton(
    UserSessionService(sharedPreferences: getIt<SharedPreferences>()),
  );
}
