// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/repository/auth_repository_impl.dart'
    as _i7;
import '../../features/authentication/domain/repository/auth_repository.dart'
    as _i6;
import '../../routing/app_router.dart' as _i3;
import '../network_manager/network_manager.dart' as _i5;
import 'register_module.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.NetworkManager>(() => _i5.NetworkManagerImpl());
    gh.lazySingleton<_i6.AuthRepository>(
        () => _i7.AuthRepositoryImpl(gh<_i5.NetworkManager>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {
  @override
  _i3.AppRouter get appRouter => _i3.AppRouter();
}
