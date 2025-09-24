import 'package:anime_app/core/theme/styles.dart';
import 'package:anime_app/features/home/data/character_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.characterModel});
  final CharacterModel characterModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(characterModel.imageUrl),
        ),

        4.verticalSpace,
        Text(characterModel.title, style: AppTextStyles.font16SemiBold),
        4.verticalSpace,
        Text(characterModel.subTitle, style: AppTextStyles.font14SemiBold),
      ],
    );
  }
}
