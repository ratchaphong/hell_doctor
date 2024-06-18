import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class LoginResponse {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String userphone;
  final String gender;
  final String address;
  final String userType;

  LoginResponse(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.userphone,
      required this.gender,
      required this.address,
      required this.userType});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
