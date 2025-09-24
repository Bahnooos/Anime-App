import 'package:anime_app/features/home/data/character_model.dart';
import 'package:anime_app/features/home/presentation/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});
  final List<CharacterModel> characters = const [
    CharacterModel(
      'Hunter x Hunter',
      title: 'Gon Freecss',
      imageUrl: 'assets/images/HxH2011_EP147_Gon_Portrait 1.png',
    ),
    CharacterModel(
      'Naruto',
      title: 'Naruto Uzumaki',
      imageUrl: 'assets/images/Naruto_Shipp%3Fden_Logo-1 1.png',
    ),
    CharacterModel(
      'One Piece',
      title: 'Luffy',
      imageUrl: 'assets/images/bff01dd0ae186d938f1af8ba127f12bd 1.png',
    ),
    CharacterModel(
      'Detective Conan',
      title: 'Conan Edogawa',
      imageUrl: 'assets/images/download 1.png',
    ),
    CharacterModel(
      'Hunter x Hunter',
      title: 'Gon Freecss',
      imageUrl: 'assets/images/HxH2011_EP147_Gon_Portrait 1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: characters.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CharacterItem(characterModel: characters[index]),
        ),
      ),
    );
  }
}
