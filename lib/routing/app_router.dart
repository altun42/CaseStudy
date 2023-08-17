import 'package:auto_route/auto_route.dart';

import '../features/authentication/presentation/pages/examination_view.dart';
import '../features/authentication/presentation/pages/login_view.dart';
import '../features/authentication/presentation/pages/register_view.dart';
import '../features/authentication/presentation/pages/splash_auth_view.dart';
import '../features/splash/presentation/pages/splash_view.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View|Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page,initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: SplashAuthRoute.page),
        AutoRoute(page: ExaminationRoute.page),


      ];
}
