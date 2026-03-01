import 'package:shared_preferences/shared_preferences.dart';

class UserSessionService {
  final String _firstTimeOpenKey = "first_time";
  final String _token = "token";
  SharedPreferences sharedPreferences;
  UserSessionService({required this.sharedPreferences});

  bool isFirstTimeOpen() =>
      sharedPreferences.getBool(_firstTimeOpenKey) ?? true;

  bool isAuthenticated() {
    bool hasToken = !(sharedPreferences.getString(_token) == null);
    return hasToken;
  }

  void completeOnboarding() {
    sharedPreferences.setBool(_firstTimeOpenKey, false);
  }

  Future<void> saveToken({required String accessToken}) async{
    await sharedPreferences.setString(_token, accessToken);
  }

  void clearToken() {
    sharedPreferences.remove(_token);
  }
}