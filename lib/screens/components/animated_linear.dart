import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:flutter/material.dart';

class AnimatedLinear extends StatelessWidget {
  const AnimatedLinear({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: value),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            )
          ],
        ),
      ),
    );
  }
}
