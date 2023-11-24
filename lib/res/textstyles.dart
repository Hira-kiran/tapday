import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle inter({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize ?? 14.sp,
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.w600,
      letterSpacing: letterSpacing ?? 0.48,
      height: height ?? 0,
    );
  }
}
