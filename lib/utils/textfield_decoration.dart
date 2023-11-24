import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/textstyles.dart';

class AppDecoration {
  InputDecoration fieldDecoration({
    Widget? preIcon,
    required String hintText,
    Widget? suffixIcon,
    double? radius,
    double? horizontalPadding,
    double? verticalPadding,
    double? iconMinWidth,
    Color? fillColor,
    FocusNode? focusNode,
    bool isdence = true,
  }) {
    return InputDecoration(
      /* contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 16), */
      fillColor: fillColor ?? const Color(0xffF2F2F7),
      hintText: hintText,
      hintStyle: AppTextStyles.inter(
        color: const Color(0xff8E8E93),
      ),
      prefixIcon: preIcon,
      suffixIcon: suffixIcon != null ? Container(child: suffixIcon) : null,
      isDense: isdence,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 8.r)),
        borderSide: BorderSide.none,
      ),
      filled: true,
    );
  }
}
