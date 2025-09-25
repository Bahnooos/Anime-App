import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/font_weight_helper.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradeHeader extends StatelessWidget {
  final VoidCallback onClose;
  const UpgradeHeader({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Upgrade Plan',
          style: AppTextStyles.font24Black.copyWith(
            color: AppColors.darkGray,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        30.horizontalSpace,
        InkWell(
          onTap: onClose,
          child: Container(
            width: 30.r,
            height: 30.r,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(Icons.close, color: Colors.black, size: 15),
          ),
        ),
      ],
    );
  }
}
