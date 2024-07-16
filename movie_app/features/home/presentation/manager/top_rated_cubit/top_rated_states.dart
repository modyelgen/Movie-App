import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';

abstract class TopRatedMoviesStates{}

class InitialTopRatedStates extends TopRatedMoviesStates {}

class LoadingTopRatedStates extends TopRatedMoviesStates {}

class SuccessTopRatedStates extends TopRatedMoviesStates {
  final List<MovieEntity>movies;
  SuccessTopRatedStates(this.movies);


}

class FailureTopRatedStates extends TopRatedMoviesStates {
  final String errMessage;
  FailureTopRatedStates(this.errMessage);
}