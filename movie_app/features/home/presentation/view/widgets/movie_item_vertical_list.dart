import 'package:app_1/movie_app/features/home/presentation/view/widgets/details_movie_in_vertical.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/image_in_vertical_list.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';

class MovieItemVertical extends StatelessWidget {
  const MovieItemVertical({Key? key,required this.movie}) : super(key: key);
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.18,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff303030),
      ),
      child: Row(
        children: [
          ImageInVerticalList(movie: movie),
          DetailsOfMovieInList(movie: movie,),
        ],
      ),
    );
  }
}