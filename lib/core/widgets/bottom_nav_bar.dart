import 'package:anime_app/core/constants/svgs.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/font_weight_helper.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,

      decoration: BoxDecoration(
        color: AppColors.backGroundColor,
        border: Border.all(
          color: AppColors.lightGray.withOpacity(0.1),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              backgroundColor: AppColors.backGroundColor,
              currentIndex: selectedIndex,
              onTap: onItemTapped,
              type: BottomNavigationBarType.shifting,
              enableFeedback: false,
              selectedItemColor: Colors.white,
              unselectedItemColor: AppColors.lightGray,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              selectedIconTheme: const IconThemeData(size: 0.0),
              unselectedIconTheme: const IconThemeData(size: 0.0),
              items: [
                _buildNavItem(Svgs.homeIcon, 0, 'home'),
                _buildNavItem(Svgs.libraryIcon, 1, 'library'),
                _buildNavItem(Svgs.searchIcon, 2, 'search'),
                _buildNavItem(Svgs.communityIcon, 3, 'community'),
                _buildNavItem(Svgs.settingIcon, 4, 'settings'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
    String assetPath,
    int index,
    String label,
  ) {
    return BottomNavigationBarItem(
      label: label,
      activeIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selectedIndex == index
              ? AppColors.mainBlue
              : AppColors.backGroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            SvgPicture.asset(assetPath, width: 13.w, height: 13.h),

            Text(
              label,
              style: AppTextStyles.font14SemiBold.copyWith(
                color: Colors.white,
                fontWeight: FontWeightHelper.regular,
              ),
            ),
          ],
        ),
      ),
      icon: SvgPicture.asset(
        assetPath,
        width: 13.w,
        height: 13.h,
        colorFilter: ColorFilter.mode(
          selectedIndex == index ? Colors.white : AppColors.lightGray,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
