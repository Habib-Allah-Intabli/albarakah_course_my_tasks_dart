// ignore_for_file: public_member_api_docs, sort_constructors_first

// ! to create and Read data from MockApi
class FoodModel {
  String name;
  String price;
  String id;
  FoodModel({
    required this.name,
    required this.price,
    required this.id,
  });

  static FoodModel fromMap(Map<String,dynamic> map){
    return FoodModel(name: map['name'], price: map['price'], id: map['id']);
  }

  Map<String,dynamic> toMap(){
    return {
      "name":name,
      "price":price,
      "id":id
    };
  }

  @override
  String toString() => 'FoodModel(name: $name, price: $price, id: $id)';
}



// ? OOP 

//. DI : Dependecny Injection 

class User {
String name;

 // ? Dependency 
DateTime birthDate;

User({
  required this.name,
  required this.birthDate
});
}

