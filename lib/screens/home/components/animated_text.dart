import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/responsive.dart';
import 'package:ahmedfathy_portfolio/screens/home/banner.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text("I build "),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive mobile app.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "complete social app UI and backend",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Chat mobile app with dark and light mode.",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "tracking mobile app with google maps.",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
