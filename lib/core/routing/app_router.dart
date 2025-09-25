import 'package:anime_app/core/routing/routes.dart';
import 'package:anime_app/features/details/presentation/details_screen.dart';
import 'package:anime_app/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String initialRoute = '/';

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      default:
        return null;
    }
  }
}
