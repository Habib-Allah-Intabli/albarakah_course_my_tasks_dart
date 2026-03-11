import 'dart:convert';
import 'package:hive/hive.dart';
part 'product_model.g.dart';
@HiveType(typeId: 0) 
class ProductModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final String thumbnail;
  @HiveField(4)
  final num price;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.price,
  });

  ProductModel copyWith({
    int? id,
    String? title,
    String? description,
    String? thumbnail,
    num? price,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      thumbnail: thumbnail ?? this.thumbnail,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'thumbnail': thumbnail,
      'price': price,
    };
  }

 
  factory ProductModel.fromMap(Map<dynamic, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String?,
      thumbnail: map['thumbnail'] as String,
      price: map['price'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => 
      ProductModel.fromMap(json.decode(source) as Map<dynamic, dynamic>);
}
