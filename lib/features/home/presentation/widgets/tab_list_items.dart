import 'package:anime_app/features/home/presentation/widgets/tab_list_item.dart';
import 'package:flutter/material.dart';

class TabListItems extends StatefulWidget {
  const TabListItems({super.key});

  @override
  State<TabListItems> createState() => _TabListItemsState();
}

class _TabListItemsState extends State<TabListItems> {
  int _selectedIndex = 0;
  bool isSelected = true;

  final categories = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Upcoming',
    'TopRated',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: GestureDetector(
            onTap: () => setState(() => _selectedIndex = index),
            child: TabListItem(
              index: index,
              selectedIndex: _selectedIndex,
              categories: categories,
            ),
          ),
        ),
      ),
    );
  }
}
