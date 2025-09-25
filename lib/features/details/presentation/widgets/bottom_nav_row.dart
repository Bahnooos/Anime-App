import 'package:anime_app/core/helpers/extensions.dart';
import 'package:anime_app/core/routing/routes.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavRow extends StatefulWidget {
  const BottomNavRow({super.key});

  @override
  State<BottomNavRow> createState() => _BottomNavRowState();
}

class _BottomNavRowState extends State<BottomNavRow> {
  bool isPreview = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => setState(() => isPreview = true),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              isPreview ? AppColors.mainBlue : AppColors.bottonAnimeTypeColor,
            ),
            minimumSize: WidgetStateProperty.all(Size(40, 30)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_circle, color: Colors.white),
              6.horizontalSpace,
              Text('preview', style: AppTextStyles.font14WhiteRegular),
            ],
          ),
        ),

        ElevatedButton(
          onPressed: () => setState(() {
            isPreview = false;
            context.pushNamed(Routes.upgradePlanScreen);
          }),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              isPreview ? AppColors.bottonAnimeTypeColor : AppColors.mainBlue,
            ),
            minimumSize: WidgetStateProperty.all(Size(40, 30)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.remove_red_eye, color: Colors.white),
              6.horizontalSpace,
              Text('Watch Now', style: AppTextStyles.font14WhiteRegular),
            ],
          ),
        ),
      ],
    );
  }
}
