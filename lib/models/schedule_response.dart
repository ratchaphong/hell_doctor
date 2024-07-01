// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'schedule_response.g.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class ScheduleResponse {
  final int statusCode;
  final String code;
  final List<ScheduleData> data;

  ScheduleResponse({
    required this.statusCode,
    required this.code,
    required this.data,
  });

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleResponseToJson(this);

  @override
  String toString() {
    return 'ScheduleResponse(statusCode: $statusCode, code: $code, data: ${data.map((o) => o.toString()).join(', ')})';
  }
}

@JsonSerializable()
class ScheduleData {
  final String confirmation;
  final String mainText;
  final String subText;
  final String date;
  final String time;
  final String image;

  ScheduleData({
    required this.confirmation,
    required this.mainText,
    required this.subText,
    required this.date,
    required this.time,
    required this.image,
  });

  factory ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataFromJson(json);
  Map<String, dynamic> toJson() => _$ScheduleDataToJson(this);

  @override
  String toString() {
    return 'ScheduleData(confirmation: $confirmation, mainText: $mainText, subText: $subText, date: $date, time: $time, image: $image)';
  }
}
