import 'package:auto_route/auto_route.dart';
import 'package:casestudy/common_widgets/app_colors.dart';
import 'package:casestudy/common_widgets/app_images.dart';
import 'package:casestudy/features/authentication/presentation/pages/login_view.dart';
import 'package:casestudy/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';


@RoutePage()
class SplashView extends HookConsumerWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor:AppColors.secondaryColor,

      onEnd: () {
        // ignore: inference_failure_on_function_invocation
        context.replaceRoute(SplashAuthRoute());
        
        
      },
      childWidget: Splash(),
      onAnimationEnd: () => debugPrint('On Fade In End'),
      defaultNextScreen:  LoginView(),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top:370.h),
        child: Column(
          children: [
            Center(
              child: Image.asset(AppImages.splashIcon,width:100.w,height: 111.17.h),
            ),
         
            Padding(
              padding:  EdgeInsets.only(top:  300.h),
              child: Image.asset(AppImages.splashLogo,width: 150.w,height: 19.53.h,),
            )
      
          ],
        ),
      ),
    );
  }
}