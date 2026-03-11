import 'package:hive/hive.dart';
import 'package:task_22_full_design/models/cart_item_model.dart';

class CartLocalDataSource {
  Future<void> saveProducts({required List<CartItemModel> cartItems}) async {
    final box = await Hive.openBox("shopping_cart");
    List<Map<dynamic, dynamic>> cartItemMaps = List.generate(cartItems.length, (
      index,
    ) {
      return cartItems[index].toMap();
    });
    await box.put("cart_list", cartItemMaps);
  }

  Future<List<CartItemModel>> getProductsToShowInCart() async {
    final box = await Hive.openBox("shopping_cart");
    final data = await box.get("cart_list");
    print(data);
    if (data != null) {
      List<CartItemModel> cartItems = List.generate(data.length, (index) {
        return CartItemModel.fromMap(data[index]);
      });
      print(cartItems);
      return cartItems;
    } else {
      return [];
    }
  }
}
