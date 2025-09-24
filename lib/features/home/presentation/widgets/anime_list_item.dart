import 'package:anime_app/core/theme/styles.dart';
import 'package:anime_app/features/home/data/anime_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeListItem extends StatelessWidget {
  const AnimeListItem({super.key, required this.animeModel});
  final AnimeModel animeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(8),
          child: Image.asset(
            animeModel.imageUrl,
            height: 160.h,
            width: 170.w,
            fit: BoxFit.fill,
          ),
        ),
        4.verticalSpace,
        Text(animeModel.title, style: AppTextStyles.font14BlackBold),
        4.verticalSpace,
        Text(animeModel.subTitle, style: AppTextStyles.font12Blackmedium),
      ],
    );
  }
}
