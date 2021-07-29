import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  "DOWNLOAD CV",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                Icon(
                  Icons.download,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  size: defaultPadding,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: const Color(0xFF24242E),
          child: Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "icons/GH.png",
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "icons/LI.png",
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "icons/FB.png",
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
