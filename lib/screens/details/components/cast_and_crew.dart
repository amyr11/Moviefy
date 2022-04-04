import 'package:flutter/material.dart';
import 'package:moviefy/constants.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  const CastAndCrew({Key? key, required this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            height: 145,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          ),
        ],
      ),
    );
  }
}
