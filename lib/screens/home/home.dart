import 'package:ahmedfathy_portfolio/screens/home/achievements.dart';
import 'package:ahmedfathy_portfolio/screens/home/banner.dart';
import 'package:ahmedfathy_portfolio/screens/home/my_projects.dart';
import 'package:ahmedfathy_portfolio/screens/home/recommendations.dart';
import 'package:ahmedfathy_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        MyBanner(),
        Achievements(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
