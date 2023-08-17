import 'package:casestudy/features/authentication/data/model/login_model/login_model.dart';
import 'package:casestudy/features/authentication/data/model/login_response_model/login_response_model.dart';
import 'package:casestudy/features/authentication/data/model/register_model/register_model.dart';
import 'package:casestudy/features/authentication/data/model/register_response_model/register_response_model.dart';
import 'package:injectable/injectable.dart';

import 'package:casestudy/features/authentication/domain/repository/auth_repository.dart';

import '../../../../core/network_manager/network_manager.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  late final NetworkManager networkManager;
  AuthRepositoryImpl(this.networkManager);
  @override
  Future<RegisterResponseModel> postRegister(
      String endpoint, RegisterModel registerModel) async {
    final response = await networkManager.post(endpoint, data: {
      "username": registerModel.username,
      "email": registerModel.email,
      "phoneNumber": registerModel.phoneNumber,
      "password": registerModel.password
    });
   
    return RegisterResponseModel.fromJson(response);
  }

  @override
  Future<LoginResponseModel> postLogin(String enpoint, LoginModel loginModel) async{
     final response = await networkManager.post(enpoint, data: {
      "email": loginModel.email,
      "password": loginModel.password
    });
    return LoginResponseModel.fromJson(response);
    
  }
}

