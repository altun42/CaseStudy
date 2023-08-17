import 'package:auto_route/auto_route.dart';
import 'package:casestudy/common_widgets/app_colors.dart';
import 'package:casestudy/common_widgets/app_images.dart';
import 'package:casestudy/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/tappable_Text.dart';

@RoutePage()
class SplashAuthView extends HookConsumerWidget {
  const SplashAuthView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 167.07.h,bottom: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImages.businessLogo,
                          width: 151.w,
                          height: 47.70.h,
                        ),
                        SizedBox(
                          height: 71.17.h,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Müşterilerinize\n',
                            style: TextStyle(
                                fontSize: 30.sp, fontFamily: 'Roboto-Regular'),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'mekanınızla',
                                style: TextStyle(
                                  color: AppColors
                                      .betweenTextColor, // Kelimenin rengini burada belirleyebilirsiniz
                                  fontFamily:'Roboto-Bold'
                                ),
                              ),
                              TextSpan(text: ' daha\nkolay erişin.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 173.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Bounceable(
                      onTap: () {
                        context.pushRoute(RegisterRoute());
                      },
                      child: Container(
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Center(
                          child: Text(
                            'Yeni hesap oluştur',
                            style: TextStyle(
                                color: AppColors.buttonTextColor,
                                fontSize: 18.sp,
                                fontFamily: 'Roboto-Bold'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Bounceable(
                    onTap: () {
                      context.pushRoute(const LoginRoute());
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 162.w),
                      child: Text(
                        'Giriş yap',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: 'Roboto-Bold',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height:63.h),
                  Padding(
                    padding:  EdgeInsets.only(left:3.w),
                    child:  const TappableText(
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



