// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class ProfileResponse {
  final int statusCode;
  final String code;
  final Data data;

  ProfileResponse({
    required this.statusCode,
    required this.code,
    required this.data,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  @override
  String toString() {
    return 'ProfileRequest(statusCode: $statusCode, code: $code, data: $data)';
  }
}

@JsonSerializable()
class Data {
  final String username;
  final String avatar;
  final String coverPhoto;
  final Stats stats;

  Data({
    required this.username,
    required this.avatar,
    required this.coverPhoto,
    required this.stats,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() {
    return 'Data(username: $username, avatar: $avatar, coverPhoto: $coverPhoto, stats: $stats)';
  }
}

@JsonSerializable()
class Stats {
  final String calories;
  final String weight;
  final String heartRate;

  Stats({
    required this.calories,
    required this.weight,
    required this.heartRate,
  });

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);

  @override
  String toString() {
    return 'Stats(calories: $calories, weight: $weight, heartRate: $heartRate)';
  }
}
