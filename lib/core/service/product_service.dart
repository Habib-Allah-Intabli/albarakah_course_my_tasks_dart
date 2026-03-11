import 'package:dio/dio.dart';
import 'package:task_22_full_design/core/constants/api_constants.dart';
import 'package:task_22_full_design/models/products_model.dart';

class ProductService {
  Future<List<ProductModel>?> getAllProducts({required int skip}) async {
    try {
      Response response = await Dio().get(
        "https://dummyjson.com/products?limit=${ApiConstants.limit}&skip=$skip",
      );
      if (response.statusCode == 200) {
        return List.generate(
          response.data["products"].length,
          (index) => ProductModel.fromMap(response.data["products"][index]),
        );
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
