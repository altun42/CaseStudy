import 'package:auto_route/auto_route.dart';
import 'package:casestudy/common_widgets/app_images.dart';
import 'package:casestudy/common_widgets/custom_button.dart';
import 'package:casestudy/common_widgets/my_appbar.dart';
import 'package:casestudy/features/authentication/presentation/providers/auth_notifier.dart';
import 'package:casestudy/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_widgets/app_colors.dart';

@RoutePage()
class ExaminationPage extends ConsumerWidget {
  ExaminationPage();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    return Scaffold(
      backgroundColor:state.isDark==true? AppColors.secondaryColor:Colors.white,
      appBar: MyAppBarImage(
        autoIcon: false,
        backgroundColor:state.isDark==true? AppColors.secondaryColor:Colors.white,
        widget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Switch(value: state.isDark, onChanged:(value) {
            ref.read(authProvider.notifier).themeControl();
          },),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color:state.isDark==true? AppColors.bodyColor:AppColors.lightBodyColor,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 70.h, left: 84.w, right: 84.w, bottom: 74.31.h),
                  child: Image.asset(
                    AppImages.onelocComingImage,
                    width: 225.w,
                    height: 255.69.h,
                  ),
                ),
                Center(
                  child: Text(
                    "Bilgilerin inceleniyor",
                    style: TextStyle(
                        color:state.isDark==true? Colors.white:AppColors.bodyColor,
                        fontSize: 26.sp,
                        fontFamily: 'Roboto-Bold'),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    "Oneloc ekibi vermiş olduğun bilgileri inceliyor. Onaylandıktan sonra bir bildirim alacaksın ve hesabını kullanmaya başlatabileceksin.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Roboto-Regular',
                        color: state.isDark==true? Colors.white:AppColors.bodyColor),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:10.w,right: 10.w),
                  child: CustomButton(
                    isLoading: false,
                    text: 'Çıkış yap',
                    onTap: () {
                      context.pushRoute(const SplashAuthRoute());
                    },
                    color: AppColors.nextColor,
                  ),
                ),
                SizedBox(height: 20.h,),
                Bounceable(
                  onTap: () {
                    
                  },
                  child: Text("Vazgeçtim, bilgilerimi tamamen sil",
                  style: TextStyle(
                    color: state.isDark==true? Colors.white:AppColors.bodyColor,
                    fontSize: 18.sp,
                    fontFamily: 'Roboto-Bold'
                  ),
                  ),
                ),
                SizedBox(height: 70.h,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
