import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/screens/side_menu/components/animated_linear.dart';
import 'package:flutter/material.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinear(
          label: "Dart",
          value: 0.7,
        ),
        const AnimatedLinear(
          label: "C#",
          value: 0.85,
        ),
        const AnimatedLinear(
          label: "VB.net",
          value: 0.9,
        ),
        const AnimatedLinear(
          label: "HTML",
          value: 0.8,
        ),
        const AnimatedLinear(
          label: "CSS",
          value: 0.7,
        ),
        const AnimatedLinear(
          label: "MS SQL Server",
          value: 0.8,
        ),
      ],
    );
  }
}
