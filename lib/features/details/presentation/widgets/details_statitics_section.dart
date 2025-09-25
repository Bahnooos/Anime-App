import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/features/details/data/details_lists.dart';
import 'package:anime_app/features/details/presentation/widgets/anime_statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsStatisticsSection extends StatelessWidget {
  const DetailsStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: AppColors.bottonAnimeTypeColor,
          thickness: .5,
          indent: 10,
          endIndent: 10,
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            statistics.length,
            (index) => AnimeStatistics(
              icon: statistics[index].iconData,
              data: statistics[index].data,
            ),
          ),
        ),
        Divider(
          color: AppColors.bottonAnimeTypeColor,
          thickness: .5,
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}
