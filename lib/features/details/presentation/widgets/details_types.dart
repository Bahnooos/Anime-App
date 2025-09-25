import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:anime_app/features/details/data/details_lists.dart';
import 'package:flutter/material.dart';

class DetailsTypes extends StatelessWidget {
  const DetailsTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        animeTypeList.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                AppColors.bottonAnimeTypeColor,
              ),
              minimumSize: WidgetStateProperty.all(const Size(20, 5)),
              maximumSize: WidgetStateProperty.all(const Size(80, 25)),
            ),
            onPressed: () {},
            child: Text(
              animeTypeList[index],
              style: AppTextStyles.font11Whitemedium,
            ),
          ),
        ),
      ),
    );
  }
}
