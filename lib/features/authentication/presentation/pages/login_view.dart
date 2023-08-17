import 'package:auto_route/auto_route.dart';
import 'package:casestudy/features/authentication/data/model/login_model/login_model.dart';
import 'package:casestudy/features/authentication/presentation/pages/register_view.dart';
import 'package:casestudy/features/authentication/presentation/providers/auth_notifier.dart';
import 'package:casestudy/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_value_listenable_builder/multi_value_listenable_builder.dart';

import '../../../../common_widgets/app_colors.dart';
import '../../../../common_widgets/custom_button.dart';
import '../../../../common_widgets/my_appbar.dart';
@RoutePage()
class LoginView extends HookConsumerWidget {
  LoginView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eMail = useTextEditingController(text: "");
    final password = useTextEditingController(text: "");
   final state = ref.watch(authProvider);
    return Scaffold(
        backgroundColor:state.isDark==true? AppColors.secondaryColor:Colors.white,
        appBar:  MyAppBar(
          title: "Giriş yap",
          textColor:state.isDark==true? Colors.white:AppColors.bodyColor,
          backgroundColor:state.isDark==true? AppColors.secondaryColor:Colors.white,
          iconColor: state.isDark==true? Colors.white:AppColors.buttonTextColor,
          widget: Switch(value: state.isDark, onChanged:(value) {
            ref.read(authProvider.notifier).themeControl();
          },),
          ),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color:state.isDark==true? AppColors.bodyColor:AppColors.lightBodyColor,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 70.h, left: 10.w, right: 10.w,bottom: 40.h),
                child: MultiValueListenableBuilder(
                  valueListenables: [password,eMail],
                  builder: (context,_,__) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'En iyi deneyimlerin merkezi\nOmeloc’a ',
                            style: TextStyle(
                              color:state.isDark==true? Colors.white:AppColors.bodyColor,
                                fontSize: 26.sp, fontFamily: 'Roboto-Regular'),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'hoş geldin!',
                                style: TextStyle(fontFamily: 'Roboto-Bold'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 70.h),
                         AuthTextField(
                          controller: eMail,
                          textColor: state.isDark==true? Colors.white:AppColors.bodyColor,
                          fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                          hintText: 'E posta adresi',
                          hintTextColor: state.isDark==true? AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor
                        ),
                      
                        
                        
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          controller: password,
                          obscureText: true,
                          style: TextStyle(
                              color: state.isDark==true? Colors.white:AppColors.bodyColor,
                              fontSize: 15.sp,
                              fontFamily: 'Roboto-Bold'),
                          decoration: InputDecoration(
                              hintText: "Şifre",
                              filled: true,
                              fillColor: state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp)),
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: 'Roboto-Bold',
                                color:state.isDark==true? AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor,
                              )),
                        ),
                        const SizedBox(height: 30,),
                         Bounceable(
                          onTap: () {
                            
                          },
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Şifremi unuttum",
                              style: TextStyle(
                                color:state.isDark==true? Colors.white:AppColors.bodyColor,
                                fontSize: 15.sp,
                                fontFamily: 'Roboto-Bold'
                              ),
                              ),
                               Icon(Icons.arrow_forward_ios,color:state.isDark==true? Colors.white:AppColors.bodyColor,size: 20.sp,)
                            ],
                                           ),
                         ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomButton(
                          isLoading: state.isLoading,
                          text: 'Giriş yap',
                          onTap: () {
                            ref.read(authProvider.notifier).login(
                              LoginModel(email: eMail.text, password: password.text)
                              , context);
                            
                          },
                          color:AppColors.buttonTextColor ,
                        ),
                        SizedBox(height: 40.h,),
                        Bounceable(
                          onTap: () {
                            context.pushRoute(RegisterRoute());
                            
                          },
                          child: Center(
                            child: Text("Yeni hesap oluştur",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "Roboto-Bold",
                              color:state.isDark==true? Colors.white:AppColors.bodyColor
                            ),
                            ),
                          ),
                        ),
                       
            
                      ],
                    );
                  }
                ),
              ),
            )
          ],
        ));
  }
}

