import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanOptionCard extends StatelessWidget {
  final bool selected;
  final Widget leading;
  final String title;
  final String price;
  final String cadence;
  final String note;
  final VoidCallback onTap;

  const PlanOptionCard({
    super.key,
    required this.selected,
    required this.leading,
    required this.title,
    required this.price,
    required this.cadence,
    required this.note,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color bg = selected ? AppColors.mainBlue : Colors.white;
    final Color border = selected ? Colors.transparent : AppColors.lavenderBlue;
    final Color titleColor = selected ? Colors.white : AppColors.darkGray;
    final Color subColor = selected
        ? AppColors.lavenderBlue
        : AppColors.lightGray;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24.r),
      child: Container(
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: border, width: 1.5),
        ),
        child: Row(
          children: [
            leading,
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.font16SemiBold.copyWith(
                      color: titleColor,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.font14SemiBold.copyWith(
                        color: titleColor,
                      ),
                      children: [
                        TextSpan(text: price),
                        TextSpan(text: ' '),
                        TextSpan(
                          text: cadence,
                          style: AppTextStyles.font14WhiteRegular.copyWith(
                            color: subColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    note,
                    style: AppTextStyles.font13WhiteRegular.copyWith(
                      color: subColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Container(
              width: 28.r,
              height: 28.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: selected
                    ? null
                    : Border.all(color: AppColors.darkGray, width: 2),
                color: selected ? Colors.white : Colors.transparent,
              ),
              child: selected
                  ? Icon(Icons.check, size: 18.r, color: AppColors.mainBlue)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
