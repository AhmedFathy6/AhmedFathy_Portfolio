import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:flutter/material.dart';

class ScoreLight extends StatelessWidget {
  const ScoreLight({
    Key? key,
    required this.counter,
    this.text,
    required this.title,
  }) : super(key: key);
  final int counter;
  final String? text;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedCounter(
          value: counter,
          text: text,
        ),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);
  final int value;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        text == null ? "$value" : "$value$text",
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: primaryColor,
            ),
      ),
    );
  }
}
