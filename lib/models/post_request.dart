// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'post_request.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class PostRequest {
  String user;
  String password;

  PostRequest({
    required this.user,
    required this.password,
  });

  factory PostRequest.fromJson(Map<String, dynamic> json) =>
      _$PostRequestFromJson(json);
  Map<String, dynamic> toJson() => _$PostRequestToJson(this);

  @override
  String toString() {
    return 'PostRequest(user: $user, password: $password)';
  }
}
