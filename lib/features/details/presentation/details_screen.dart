import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/features/details/presentation/widgets/bottom_nav_row.dart';
import 'package:anime_app/features/details/presentation/widgets/details_description.dart';
import 'package:anime_app/features/details/presentation/widgets/details_header.dart';
import 'package:anime_app/features/details/presentation/widgets/details_statitics_section.dart';
import 'package:anime_app/features/details/presentation/widgets/details_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGray,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.animeGridentGrayColor,
                AppColors.animeGridentDarkBlueColor,
                AppColors.animeGridentGrayColor,
              ],
              stops: [.15, .7, 1],
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DetailsHeader(),
                const DetailsTypes(),
                const DetailsStatisticsSection(),
                const DetailsDescription(),
                80.verticalSpace, // space for nav
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 65.h,
        color: AppColors.darkGray,
        child: const BottomNavRow(),
      ),
    );
  }
}
