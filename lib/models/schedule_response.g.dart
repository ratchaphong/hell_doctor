// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      code: json['code'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ScheduleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'code': instance.code,
      'data': instance.data,
    };

ScheduleData _$ScheduleDataFromJson(Map<String, dynamic> json) => ScheduleData(
      confirmation: json['confirmation'] as String,
      mainText: json['mainText'] as String,
      subText: json['subText'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$ScheduleDataToJson(ScheduleData instance) =>
    <String, dynamic>{
      'confirmation': instance.confirmation,
      'mainText': instance.mainText,
      'subText': instance.subText,
      'date': instance.date,
      'time': instance.time,
      'image': instance.image,
    };
