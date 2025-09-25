import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/core/helpers/spacing.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/font_weight_helper.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradeHero extends StatelessWidget {
  const UpgradeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.r)),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Image.asset(
            AppImages.rocketIllustration,
            height: 130.h,
            fit: BoxFit.contain,
          ),
          verticalSpace(16),
          Text(
            'Seamless Anime\nExperience, Ad-Free.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font24Black.copyWith(
              color: AppColors.darkGray,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          verticalSpace(8),
          Text(
            'Enjoy unlimited anime streaming without\ninterruptions.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font14WhiteRegular.copyWith(
              color: AppColors.lightGray,
            ),
          ),
        ],
      ),
    );
  }
}
