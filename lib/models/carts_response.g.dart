// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartsResponse _$CartsResponseFromJson(Map<String, dynamic> json) =>
    CartsResponse(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$CartsResponseToJson(CartsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'date': instance.date,
    };
