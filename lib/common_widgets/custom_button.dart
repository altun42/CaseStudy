import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, this.color, required this.onTap,required this.isLoading,
  });
  final String text;
  final Color? color;
  final bool isLoading;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.sp)),
        child: Center(
          child:isLoading==false? Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontFamily: 'Roboto-Bold'),
          ):Center(child: CircularProgressIndicator(color: Colors.white,),),
        ),
      ),
    );
  }
}