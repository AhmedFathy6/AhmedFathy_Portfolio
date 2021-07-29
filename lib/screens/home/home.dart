import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/screens/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'images/banner.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                color: darkColor.withOpacity(.66),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Discover my Amazing \nArt Space!",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    const BuildAnimatedText(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "EXPLORE NOW",
                        style: TextStyle(
                          color: darkColor,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

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

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: ">",
          ),
        ],
      ),
    );
  }
}
