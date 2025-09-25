import 'package:anime_app/core/helpers/spacing.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/features/upgrade_plan/presentation/widgets/primary_button.dart';
import 'package:anime_app/features/upgrade_plan/presentation/widgets/subscription_buttons.dart';
import 'package:anime_app/features/upgrade_plan/presentation/widgets/upgrade_header.dart';
import 'package:anime_app/features/upgrade_plan/presentation/widgets/upgrade_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lavenderBlue, AppColors.backGroundColor],
            stops: [.6, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UpgradeHeader(
                      onClose: () => Navigator.of(context).maybePop(),
                    ),
                    const UpgradeHero(),
                    verticalSpace(24),
                    const SubscriptionButtons(),
                    verticalSpace(16),
                    PrimaryButton(label: 'Continue', onPressed: () {}),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
