// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponseModel _$$_RegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterResponseModel(
      message: json['message'] as String?,
      title: json['title'] as String?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$_RegisterResponseModelToJson(
        _$_RegisterResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'title': instance.title,
      'isSuccess': instance.isSuccess,
    };
