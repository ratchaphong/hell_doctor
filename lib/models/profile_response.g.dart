// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      code: json['code'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'code': instance.code,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      username: json['username'] as String,
      avatar: json['avatar'] as String,
      coverPhoto: json['coverPhoto'] as String,
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'username': instance.username,
      'avatar': instance.avatar,
      'coverPhoto': instance.coverPhoto,
      'stats': instance.stats,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      calories: (json['calories'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      heartRate: (json['heartRate'] as num).toInt(),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'calories': instance.calories,
      'weight': instance.weight,
      'heartRate': instance.heartRate,
    };
