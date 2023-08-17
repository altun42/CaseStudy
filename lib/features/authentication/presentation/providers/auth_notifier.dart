import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:casestudy/core/injections/locator.dart';
import 'package:casestudy/features/authentication/data/model/login_model/login_model.dart';
import 'package:casestudy/features/authentication/data/model/register_model/register_model.dart';
import 'package:casestudy/features/authentication/domain/repository/auth_repository.dart';
import 'package:casestudy/features/authentication/presentation/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../routing/app_router.dart';

final authProvider =
    NotifierProvider.autoDispose<AuthNotifier, AuthState>(AuthNotifier.new);

class AuthNotifier extends AutoDisposeNotifier<AuthState> {
  AuthNotifier();

  @override
  AuthState build() {
    _init();
    return AuthState.initial();
  }

  Future<void> _init() async {}
  Future<void> themeControl() async {
    if (state.isDark == true) {
      state = state.copyWith(isDark: false);
    } else {
      state = state.copyWith(isDark: true);
    }
  }
  
  Future<void> register(
      RegisterModel registerModel, BuildContext context) async {
    state = state.copyWith(isLoading: true);
    final resultRegister = await getIt<AuthRepository>().postRegister(
        "https://case.onelocapp.com/api/auth/register", registerModel);
    state = state.copyWith(responseModel: resultRegister);
    if (state.responseModel!.isSuccess == true) {
     if (state.isDark==true) {
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Success',
        state.responseModel!.message!,
        type: AnimatedSnackBarType.success,
        brightness: Brightness.dark,
        duration: const Duration(seconds: 6)
      ).show(context);
       
     }else{
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Success',
        state.responseModel!.message!,
        type: AnimatedSnackBarType.success,
        brightness: Brightness.light,
        duration: const Duration(seconds: 6)
      ).show(context);
     }
      // ignore: use_build_context_synchronously
      context.pushRoute(const LoginRoute());
      
      state = state.copyWith(isLoading: false);
    } else {
      print(state.responseModel!.message);
     if (state.isDark==true) {
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Unsuccess',
        state.responseModel!.message!,
        type: AnimatedSnackBarType.error,
        brightness: Brightness.dark,
        duration: const Duration(seconds: 6)
      ).show(context);
       
     }else{
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Unsuccess',
        state.responseModel!.message!,
        type: AnimatedSnackBarType.error,
        brightness: Brightness.light,
        duration: const Duration(seconds: 6)
      ).show(context);
     }
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> login(
      LoginModel loginModel, BuildContext context) async {
    state = state.copyWith(isLoading: true);
    final resultLogin = await getIt<AuthRepository>().postLogin(
        "https://case.onelocapp.com/api/auth/login", loginModel);
    state = state.copyWith(loginResponseModel: resultLogin);
    if (state.loginResponseModel!.isSuccess == true) {
     if (state.isDark==true) {
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Success',
        state.loginResponseModel!.message!,
        type: AnimatedSnackBarType.success,
        brightness: Brightness.dark,
        duration: const Duration(seconds: 6)
      ).show(context);
       
     }else{
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Success',
        state.loginResponseModel!.message!,
        type: AnimatedSnackBarType.success,
        brightness: Brightness.light,
        duration: const Duration(seconds: 6)
      ).show(context);
     }
      // ignore: use_build_context_synchronously
      context.pushRoute(const ExaminationRoute());
      
      state = state.copyWith(isLoading: false);
    } else {
      print(state.loginResponseModel!.message);
     if (state.isDark==true) {
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Unsuccess',
        state.loginResponseModel!.message!,
        type: AnimatedSnackBarType.error,
        brightness: Brightness.dark,
        duration: const Duration(seconds: 6)
      ).show(context);
       
     }else{
       // ignore: use_build_context_synchronously
       AnimatedSnackBar.rectangle(
        'Unsuccess',
        state.loginResponseModel!.message!,
        type: AnimatedSnackBarType.error,
        brightness: Brightness.light,
        duration: const Duration(seconds: 6)
      ).show(context);
     }
      state = state.copyWith(isLoading: false);
    }
  }
}
