import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:casestudy/features/authentication/data/model/register_model/register_model.dart';
import 'package:casestudy/features/authentication/presentation/providers/auth_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_value_listenable_builder/multi_value_listenable_builder.dart';

import '../../../../common_widgets/app_colors.dart';
import '../../../../common_widgets/app_images.dart';
import '../../../../common_widgets/custom_button.dart';
import '../../../../common_widgets/my_appbar.dart';
import '../../../../common_widgets/tappable_Text.dart';
import '../../../../routing/app_router.dart';


@RoutePage()
class RegisterView extends HookConsumerWidget {
  RegisterView();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    final userName = useTextEditingController(text: "");
    final email = useTextEditingController(text:"");
    final phoneNumber = useTextEditingController(text:"");
    final password = useTextEditingController(text: "");
    return Scaffold(
        backgroundColor:state.isDark==true? AppColors.secondaryColor:Colors.white,
        appBar: MyAppBar(
          title: 'Yeni hesap oluştur',
          backgroundColor:state.isDark==true?AppColors.secondaryColor:Colors.white ,
          iconColor:state.isDark==true? Colors.white:AppColors.buttonTextColor,
          textColor: state.isDark==true?Colors.white:AppColors.bodyColor,
          widget: Switch(value:state.isDark , onChanged:(value) {
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
                padding: EdgeInsets.only(top: 30.h, left: 10.w, right: 10.w,bottom: 40.h),
                child: MultiValueListenableBuilder(
                  valueListenables: [email,userName,phoneNumber,password],
                  builder: (context,_,__) {
                    return Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Hemen yeni bir hesap oluştur ve\nen iyi ',
                            style: TextStyle(
                              color:state.isDark==true? Colors.white:AppColors.bodyColor,
                                fontSize: 26.sp, fontFamily: 'Roboto-Regular'),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'deneyimi yaşa!',
                                style: TextStyle(fontFamily: 'Roboto-Bold'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                         AuthTextField(
                          controller: userName,
                          textColor:state.isDark==true? Colors.white:AppColors.bodyColor,
                          fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                          hintText: 'Kullanıcı adı',
                          hintTextColor:state.isDark==true? AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                         AuthTextField(
                          controller: email,
                          textColor: state.isDark==true? Colors.white:AppColors.bodyColor,
                          fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                          hintText: 'E-posta adresi',
                          hintTextColor: state.isDark==true?AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 112.w,
                              child: TextField(
                                readOnly: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: 'Roboto-Bold'),
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.only(left: 20.w, right: 10.w),
                                      child: Image.asset(
                                        AppImages.flag,
                                        width: 30.w,
                                        height: 20.h,
                                      ),
                                    ),
                                    hintText: "+90",
                                    filled: true,
                                    fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.sp)),
                                    hintStyle: TextStyle(
                                        fontSize: 15.sp,
                                        fontFamily: 'Roboto-Bold',
                                        color:state.isDark==true? AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor)),
                              ),
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Expanded(
                              child: TextField(
                                controller: phoneNumber,
                                style: TextStyle(
                                    color: state.isDark==true? Colors.white:AppColors.bodyColor,
                                    fontSize: 15.sp,
                                    fontFamily: 'Roboto-Bold'),
                                decoration: InputDecoration(
                                    hintText: "Telefon numarası",
                                    filled: true,
                                    fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.sp)),
                                    hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: 'Roboto-Bold',
                                      color:state.isDark==true? AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor,
                                    )),
                              ),
                            )
                          ],
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
                              fillColor:state.isDark==true? AppColors.textfieldBackgroundColor:AppColors.textfieldHintTextColor,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp)),
                              hintStyle: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: 'Roboto-Bold',
                                color: state.isDark==true?AppColors.textfieldHintTextColor:AppColors.textfieldBackgroundColor,
                              )),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButton(
                          isLoading: state.isLoading,
                          text:  'Hesabı oluştur', onTap: ()async{
                          RegisterModel registermodel = RegisterModel(username: userName.text, email: email.text, phoneNumber: phoneNumber.text, password: password.text);
                         await ref.read(authProvider.notifier).register(registermodel,context);
                        }, color: AppColors.buttonTextColor,),
                       
                        SizedBox(height: 40.h,),
                        
                        Bounceable(
                          onTap: () {
                            context.pushRoute(const LoginRoute());
                            
                          },
                          child: Text("Giriş yap",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: "Roboto-Bold",
                            color: state.isDark==true?Colors.white:AppColors.bodyColor
                          ),
                          ),
                        ),
                        SizedBox(height: 40.h,),
                         TappableText(
                          textColor:state.isDark==true? Colors.white:AppColors.bodyColor,
                        )
           
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

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    this.controller, required this.fillColor, required this.hintTextColor, required this.textColor,
  });
  final String hintText;
  final TextEditingController? controller;
  final Color fillColor;
  final Color hintTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
          color: textColor, fontSize: 15.sp, fontFamily: 'Roboto-Bold'),
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: fillColor,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.sp)),
          hintStyle: TextStyle(
            fontSize: 15.sp,
            fontFamily: 'Roboto-Bold',
            color: hintTextColor,
          )),
    );
  }
}
