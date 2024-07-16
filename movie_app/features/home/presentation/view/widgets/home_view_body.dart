import 'package:app_1/movie_app/features/home/presentation/view/widgets/now_playing_shadow.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/popular_builder.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/top_rated_builder.dart';
import 'package:flutter/material.dart';

class HomeMovieViewBody extends StatelessWidget {
  const HomeMovieViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
           NowPlayingShadow(),
          PopularMoviesBuilder(),
          TopRatedMoviesBuilder(),
        ],
      ),
    );
  }
}







