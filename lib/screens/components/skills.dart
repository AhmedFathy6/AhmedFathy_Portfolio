import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/screens/components/animated_cricular.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircular(
                skill: "Flutter",
                value: 0.7,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircular(
                skill: ".Net",
                value: 0.85,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircular(
                skill: "Firebase",
                value: 0.6,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
