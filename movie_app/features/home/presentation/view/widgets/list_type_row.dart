import 'package:app_1/movie_app/features/home/presentation/view/widgets/custom_horizontal_list.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/movie_type_row.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';

class ListAndTypePart extends StatelessWidget {
  const ListAndTypePart({Key? key,required this.title,required this.movies}) : super(key: key);
  final String title;
  final List<MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height*0.25;
    return SizedBox(
      height: height,
      child: Column(
        children:  [
          SizedBox(height: height*.1,child: MovieTypeRow(title:title,movie:movies)),
           SizedBox(height: height*.9,child: CustomMoviesHorizontalList(movies: movies)),
        ],
      ),
    );
  }
}