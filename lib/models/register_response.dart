// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class RegisterResponse {
  final int statusCode;
  final String code;
  final String message;

  RegisterResponse({
    required this.statusCode,
    required this.code,
    required this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);

  @override
  String toString() {
    return 'RegisterRequest(statusCode: $statusCode, code: $code, message: $message)';
  }
}
