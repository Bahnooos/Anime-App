import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TabListItem extends StatelessWidget {
  const TabListItem({
    super.key,
    required int selectedIndex,
    required this.categories,
    required this.index,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;
  final List<String> categories;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: _selectedIndex == index ? AppColors.mainBlue : Colors.white,
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Text(
            categories[index],
            style: AppTextStyles.font14Bold.copyWith(
              color: _selectedIndex == index
                  ? Colors.white
                  : AppColors.mainBlue,
            ),
          ),
        ),
      ),
    );
  }
}
