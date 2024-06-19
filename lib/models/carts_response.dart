// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'carts_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class CartsResponse {
  int id;
  int userId;
  String date;
  // List<Product> products;
  // int v;

  CartsResponse({
    required this.id,
    required this.userId,
    required this.date,
    // required this.products,
    // required this.v,
  });

  factory CartsResponse.fromJson(Map<String, dynamic> json) =>
      _$CartsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CartsResponseToJson(this);

  @override
  String toString() {
    return 'CartsResponse(id: $id, userId: $userId, date: $date)';
  }
}
