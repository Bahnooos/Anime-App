import 'package:anime_app/core/constants/font_family.dart';
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
  static TextStyle font14WhiteRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
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
  static TextStyle font13WhiteRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle font11Whitemedium = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle font36NewRockerRegular = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
    fontFamily: FontFamily.newRockerFont,
  );
  static TextStyle font48NewRockerRegular = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
    fontFamily: FontFamily.newRockerFont,
  );
}
