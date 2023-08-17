
import 'package:casestudy/features/authentication/data/model/login_data_model/login_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';
@freezed
class LoginResponseModel with _$LoginResponseModel{
  factory LoginResponseModel({
    required LoginDataModel? data,
    required String? message,
    required String? title,
    required bool? isSuccess,



  })=_LoginResponseModel;
    factory LoginResponseModel.fromJson(Map<String, Object?> json) => _$LoginResponseModelFromJson(json);

}