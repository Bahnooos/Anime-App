import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/styles.dart';
import 'package:anime_app/features/home/presentation/widgets/anime_list.dart';
import 'package:anime_app/features/home/presentation/widgets/tab_list_items.dart';
import 'package:anime_app/features/home/presentation/widgets/top_characters_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gridentColor, Colors.white],
            stops: [.15, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10.h, left: 16.0.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Where Anime Comes Alive',
                    style: AppTextStyles.font24Black,
                  ),
                  15.verticalSpace,
                  TabListItems(),
                  10.verticalSpace,
                  AnimeList(),
                  10.verticalSpace,
                  TopCharactersSection(),
                 
                ],
              ),
            ),
          ),
        ),
        
      ),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
