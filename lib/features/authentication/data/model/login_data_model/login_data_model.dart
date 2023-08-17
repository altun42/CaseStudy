
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';
@freezed
class LoginDataModel with _$LoginDataModel{
  factory LoginDataModel({
    required String? accessToken,
    required String? expirationDate,



  })=_LoginDataModel;
    factory LoginDataModel.fromJson(Map<String, Object?> json) => _$LoginDataModelFromJson(json);

}