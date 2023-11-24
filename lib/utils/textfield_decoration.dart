import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      prefixIconConstraints: BoxConstraints(
        minWidth: iconMinWidth ?? 42,
      ),
      contentPadding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 16, vertical: verticalPadding ?? 16),
      fillColor: fillColor ?? Colors.white,
      hintText: hintText,
      prefixIcon: preIcon,
      suffixIcon: suffixIcon != null ? Container(child: suffixIcon) : null,
      isDense: isdence,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.blue),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10.r)),
        borderSide: const BorderSide(color: Colors.red),
      ),
      filled: true,
    );
  }
}
