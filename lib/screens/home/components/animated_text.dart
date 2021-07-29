import 'package:ahmedfathy_portfolio/constants.dart';
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
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          const Text("I build "),
          AnimatedTextKit(
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
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          const FlutterCodedText(),
        ],
      ),
    );
  }
}
