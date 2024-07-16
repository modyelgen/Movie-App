import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/movie_item_vertical_list.dart';
import 'package:flutter/material.dart';

class MoviesListVerticalBody extends StatelessWidget {
  const MoviesListVerticalBody({Key? key,required this.movies}) : super(key: key);
final List <MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              physics:const BouncingScrollPhysics(),
                itemBuilder: (context,index){
              return MovieItemVertical(movie: movies[index]);
            }, separatorBuilder: (context ,index){
                  return const SizedBox(height: 10,);
            }, itemCount: movies.length),
          ),
        ],
      ),
    );
  }
}





