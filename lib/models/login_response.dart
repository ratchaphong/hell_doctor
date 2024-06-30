// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class LoginResponse {
  final int statusCode;
  final String code;
  final String message;

  LoginResponse({
    required this.statusCode,
    required this.code,
    required this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  String toString() {
    return 'LoginResponse(statusCode: $statusCode, code: $code, message: $message)';
  }
}
