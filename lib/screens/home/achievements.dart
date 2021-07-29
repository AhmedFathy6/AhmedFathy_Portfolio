import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/responsive.dart';
import 'package:ahmedfathy_portfolio/screens/home/components/score.dart';
import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  const Achievements({
    Key? key,
  }) : super(key: key);
  final List<Widget> firstChildren = const [
    ScoreLight(
      counter: 180,
      text: "+",
      title: "Training hours",
    ),
    ScoreLight(
      counter: 20,
      text: "+",
      title: ".Net Projects",
    ),
  ];
  final List<Widget> secondChildren = const [
    ScoreLight(
      counter: 5,
      title: "Flutter Projects",
    ),
    ScoreLight(
      counter: 3,
      title: "GitHub Public Projects",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: !Responsive.isMobileLarge(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...firstChildren,
                ...secondChildren,
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: firstChildren,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: secondChildren,
                ),
              ],
            ),
    );
  }
}
