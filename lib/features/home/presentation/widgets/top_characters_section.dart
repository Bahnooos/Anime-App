import 'package:anime_app/core/theme/font_weight_helper.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:anime_app/features/home/presentation/widgets/characters_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopCharactersSection extends StatelessWidget {
  const TopCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Characters',
          style: AppTextStyles.font24Black.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        10.verticalSpace,
        CharactersList(),
      ],
    );
  }
}
