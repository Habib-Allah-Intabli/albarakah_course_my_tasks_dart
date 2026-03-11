// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String thumbnail;
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

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      thumbnail: map['thumbnail'] as String,
      price: map['price'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, description: $description, thumbnail: $thumbnail, price: $price)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.thumbnail == thumbnail &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        thumbnail.hashCode ^
        price.hashCode;
  }
}
