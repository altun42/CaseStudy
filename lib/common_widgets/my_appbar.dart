import 'package:casestudy/common_widgets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget widget;
  final Color textColor;
  final Color iconColor;
  final Color backgroundColor;

  const MyAppBar({super.key, required this.title, required this.widget, required this.textColor, required this.iconColor, required this.backgroundColor});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        actions: [
          widget

        ],
        iconTheme: IconThemeData(color: iconColor),
        centerTitle: true,
      title: Text(title,
      style: TextStyle(
        color: textColor,
        fontSize: 18.sp,
        fontFamily: 'Roboto-Bold'
      ),
      ),
       // AppBar'ın gölgesini kaldırmak için
      backgroundColor: backgroundColor, // AppBar'ın arkaplanını saydam yapmak için
      flexibleSpace: Column(
        children: [
          Container(
            height: 1.0.h, // Üst kenarlık yüksekliği
            color: Colors.grey, // Üst kenarlık rengi
          ),
          const Spacer(),
          Container(
            height: 1.h, // Alt kenarlık yüksekliği
            color: Colors.grey, // Alt kenarlık rengi
          ),
        ],
      ),
        )
    );
  }
}



class MyAppBarImage extends StatelessWidget implements PreferredSizeWidget {
 final Color backgroundColor;
 final Widget widget;
 final bool autoIcon;

  const MyAppBarImage({super.key, required this.backgroundColor, required this.widget, required this.autoIcon});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: AppBar(
        automaticallyImplyLeading: autoIcon,
        actions: [
          widget
        ],
        centerTitle: true,
      title: Image.asset(AppImages.appbarImage,width: 35.98.w,height: 40.h,),
       // AppBar'ın gölgesini kaldırmak için
      backgroundColor: backgroundColor, // AppBar'ın arkaplanını saydam yapmak için
      flexibleSpace: Column(
        children: [
          Container(
            height: 1.0.h, // Üst kenarlık yüksekliği
            color: Colors.grey, // Üst kenarlık rengi
          ),
          const Spacer(),
          Container(
            height: 1.h, // Alt kenarlık yüksekliği
            color: Colors.grey, // Alt kenarlık rengi
          ),
        ],
      ),
        )
    );
  }
}