import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/movie_item_list_h.dart';
import 'package:flutter/material.dart';

class CustomMoviesHorizontalList extends StatelessWidget {
  const CustomMoviesHorizontalList({Key? key,required this.movies}) : super(key: key);
final List<MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return  ListMovieItem(image:movies[index].backGroundImage??"" );},
      separatorBuilder: (context,index){
        return const SizedBox(width: 7,);},
      itemCount: movies.length,
    );
  }
}
