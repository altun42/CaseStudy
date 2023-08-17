import 'package:casestudy/features/authentication/data/model/login_response_model/login_response_model.dart';
import 'package:casestudy/features/authentication/data/model/register_response_model/register_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
   
    required bool isDark,
    required RegisterResponseModel? responseModel,
    required LoginResponseModel? loginResponseModel,
    required bool isLoading,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
      isDark: true,
      responseModel:null,
      isLoading: false,
      loginResponseModel: null
      );
}