import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:flutter/material.dart';

class AnimatedCircular extends StatelessWidget {
  const AnimatedCircular({
    Key? key,
    required this.skill,
    required this.value,
  }) : super(key: key);
  final String skill;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          skill,
          style: Theme.of(context).textTheme.subtitle2,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
