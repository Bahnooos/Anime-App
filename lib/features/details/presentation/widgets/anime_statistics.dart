import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeStatistics extends StatelessWidget {
  const AnimeStatistics({super.key, required this.icon, required this.data});
  final IconData? icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 13, color: Colors.white),
        4.horizontalSpace,
        Text(data, style: AppTextStyles.font13WhiteRegular),
      ],
    );
  }
}
