import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/core/constants/svgs.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .63,
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .55,
            width: double.infinity,
            child: Image.asset(AppImages.detailsImage, fit: BoxFit.cover),
          ),
          Positioned(
            top: 263.h,
            left: 0,
            right: 0,
            child: Container(
              height: 120.h,
              width: 120.h,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: AppColors.backGroundColor,
              ),
            ),
          ),
          Positioned(
            top: 260.h,
            left: 0,
            right: -50,
            child: SvgPicture.asset(Svgs.ellipse, height: 132.h),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 290.h),
              child: Column(
                children: [
                  Text(
                    'DEMON',
                    style: AppTextStyles.font48NewRockerRegular.copyWith(
                      height: 1.2,
                    ),
                  ),
                  Text(
                    'SLAYER',
                    style: AppTextStyles.font36NewRockerRegular.copyWith(
                      height: .9,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
