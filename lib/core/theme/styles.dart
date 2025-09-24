import 'package:anime_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24Black = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
  );
  static TextStyle font14Bold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14SemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16SemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14BlackBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font12Blackmedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black,
  );
}
