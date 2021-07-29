import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/screens/home/components/score.dart';
import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  const Achievements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
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
          ScoreLight(
            counter: 5,
            title: "Flutter Projects",
          ),
          ScoreLight(
            counter: 3,
            title: "GitHub Public Projects",
          ),
        ],
      ),
    );
  }
}
