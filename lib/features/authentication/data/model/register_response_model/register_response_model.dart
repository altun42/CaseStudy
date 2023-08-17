
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';
@freezed
class RegisterResponseModel with _$RegisterResponseModel{
  factory RegisterResponseModel({
    required String? message,
    required String? title,
    required bool? isSuccess,



  })=_RegisterResponseModel;
    factory RegisterResponseModel.fromJson(Map<String, Object?> json) => _$RegisterResponseModelFromJson(json);

}