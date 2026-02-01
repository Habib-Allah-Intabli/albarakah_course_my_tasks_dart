import 'package:dio/dio.dart';
import 'package:restfulapi_post_and_complex_json/restfulapi_post_and_complex_json.dart';
import 'package:restfulapi_post_and_complex_json/user_model.dart';
import 'package:restfulapi_post_and_complex_json/user_online_model.dart';
//? Desing Pattern : https://refactoring.guru/design-patterns/
void main() async {
  // FoodModel? foodModel = await getOneFood();
  // print(foodModel);
  // print(foodModel!.toMap());

  // ? Injection
  // User user = User(name: "AHmad",birthDate: DateTime(1990));
  // print(user.birthDate);
  // User user1 = User(name: "Sami",birthDate: DateTime(2000));
  // print(user1.birthDate);

// ? Create food using toMap :  2
FoodModel foodModel  =FoodModel(name: "Orange", price: "300", id: "");
bool status = await createNewFood(food: foodModel);
if (status) {
  print("Yes You creat a new Food");
} else {
  print("There was an error on Creating");
  
}

 // ? test the auto generate serlize : 3
//   UserOnlineModel? userModel = await getOneOnlineUser();
//   print(userModel);
}

Future<FoodModel?> getOneFood() async {
  Dio dio = Dio();

  try {
    Response response = await dio.get(
      "https://693d5ff7f55f1be79302a8ae.mockapi.io/api/v1/food/2",
    );
    FoodModel food = FoodModel.fromMap(response.data);
    return food;
  } catch (e) {
    print(e);
    return null;
  }
}

Future<UserModel?> getOneUser() async {
  try {
    Dio dio = Dio();
    Response response = await dio.get(
      "https://jsonplaceholder.typicode.com/users/1",
    );
    UserModel user = UserModel.fromMap(response.data);
    return user;
  } catch (e) {
    print(e);
    return null;
  }
}


// ? Create food using toMap :  2
Future<bool> createNewFood({required FoodModel food}) async {
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      "https://693d5ff7f55f1be79302a8ae.mockapi.io/api/v1/food/",
      data: food.toMap(),
    );
    print(response);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}


 // ? test the auto generate serlize : 3
Future<UserOnlineModel?> getOneOnlineUser() async {
  try {
    Dio dio = Dio();
    Response response = await dio.get(
      "https://jsonplaceholder.typicode.com/users/1",
    );
    UserOnlineModel user = UserOnlineModel.fromJson(response.data);
    return user;
  } catch (e) {
    print(e);
    return null;
  }
}
