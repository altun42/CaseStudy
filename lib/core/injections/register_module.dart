import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../routing/app_router.dart';

@module
abstract class RegisterModule{
  @lazySingleton
  AppRouter get appRouter;
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: 'https://case.onelocapp.com/api/auth/register'
    )
  );

}