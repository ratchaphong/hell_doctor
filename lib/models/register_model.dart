// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class RegisterModel {
  String user;
  String password;
  String firstName;
  String lastName;
  String email;
  String phone;
  String gender;
  int age;

  RegisterModel({
    required this.user,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.age,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  @override
  String toString() {
    return 'RegisterModel(user: $user, password: $password, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, gender: $gender)';
  }
}
