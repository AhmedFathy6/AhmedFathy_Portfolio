import 'package:ahmedfathy_portfolio/constants.dart';
import 'package:ahmedfathy_portfolio/models/recommendation.dart';
import 'package:flutter/material.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      width: 400,
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            recommendation.source!,
            style: const TextStyle(
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
