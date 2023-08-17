import 'package:casestudy/features/authentication/data/model/login_model/login_model.dart';
import 'package:casestudy/features/authentication/data/model/login_response_model/login_response_model.dart';
import 'package:casestudy/features/authentication/data/model/register_model/register_model.dart';
import 'package:casestudy/features/authentication/data/model/register_response_model/register_response_model.dart';

abstract class AuthRepository{
  Future<RegisterResponseModel> postRegister(String endpoint,RegisterModel registerModel);
  Future<LoginResponseModel> postLogin(String enpoint, LoginModel loginModel);
  
}