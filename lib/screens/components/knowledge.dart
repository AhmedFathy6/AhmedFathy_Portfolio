import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:flutter/material.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(
          label: "Flutter, Dart",
        ),
        const KnowledgeText(
          label: "Git Knowledge",
        ),
        const KnowledgeText(
          label: "CI / CD",
        ),
        const KnowledgeText(
          label: "Clean Code",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          const Icon(
            Icons.done,
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 4,
          ),
          Text(label),
        ],
      ),
    );
  }
}
