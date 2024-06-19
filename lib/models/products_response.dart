// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class ProductsResponse {
  int id;
  String title;
  double price;
  String description;
  String image;

  ProductsResponse({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);

  @override
  String toString() {
    return 'ProductsResponse(id: $id, title: $title, price: $price, description: $description, image: $image)';
  }
}
