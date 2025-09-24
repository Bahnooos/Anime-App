import 'package:anime_app/features/home/data/anime_model.dart';
import 'package:anime_app/features/home/presentation/widgets/anime_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});
  final List<AnimeModel> animeItems = const [
    AnimeModel(
      'Mystery',
      title: 'Detective Conan',
      imageUrl: 'assets/images/detective_conana.png',
    ),
    AnimeModel(
      'Adventure',
      title: 'Hunter x Hunter',
      imageUrl: 'assets/images/xHunter.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animeItems.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsGeometry.only(right: 8.w),
          child: AnimeListItem(animeModel: animeItems[index]),
        ),
      ),
    );
  }
}
