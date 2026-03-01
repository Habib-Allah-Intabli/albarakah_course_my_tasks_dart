import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_22_full_design/core/config/di.dart';
import 'package:task_22_full_design/models/login_model.dart';

class AuthService {
  Dio dio = Dio();
  final String baseUrl = "https://dummyjson.com/auth";
  late Response response;
  Future<bool> login({required LoginModel loginModel}) async {
    try {
      response = await dio.post("$baseUrl/login", data: loginModel.toMap());
      if (response.statusCode == 201) {
        getIt.get<SharedPreferences>().setString(
          "token",
          response.data["access_token"],
        );
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
