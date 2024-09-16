import 'package:flutter/material.dart';
import 'package:movies_app/Models/movie_model.dart';
import 'package:movies_app/Widgets/show_poster_movie.dart';
import 'package:movies_app/constants.dart';

class ViewInRow extends StatelessWidget {
  const ViewInRow({
    super.key,
    required this.movies,
  });
  final List<MovieModel> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, left: 20),
      child: Container(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        height: 230,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: 30,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return ShowPoster(
              Imageurl: posterUrl + movies[index].poster!,
              height: 230,
              width: 140,
            );
          },
        ),
      ),
    );
  }
}
