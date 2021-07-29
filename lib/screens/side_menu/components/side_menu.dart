import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/area_info.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/coding.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/knowledge.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/linkes.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/my_info.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/skills.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: const [
                  AreaInfoText(
                    title: "Residence",
                    text: "Egypt",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Giza",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "29",
                  ),
                  Skills(),
                  Coding(),
                  Knowledge(),
                  Links(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
