import 'package:flutter/material.dart';
import 'package:moviefy/constants.dart';
import 'package:moviefy/components/genre_card.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation',
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(genre: genres[index])),
    );
  }
}