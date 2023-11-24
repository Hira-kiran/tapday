import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/textstyles.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.text,
      this.bgColor,
      this.textColor,
      required this.onTap,
      this.height = 45,
      this.width = 100,
      this.loading = false,
      super.key});

  String text;
  Color? textColor;
  Color? bgColor;
  void Function() onTap;
  final bool loading;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (loading) return;
        onTap();
      },
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: bgColor ?? const Color(0xff342AEF),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: loading == true
              ? const CircularProgressIndicator(color: Colors.white)
              : Text(
                  text,
                  style: AppTextStyles.inter(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
