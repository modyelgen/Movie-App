import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';

abstract class PopularMoviesStates{}

class InitialPopularStates extends PopularMoviesStates {}

class LoadingPopularStates extends PopularMoviesStates {}

class SuccessPopularStates extends PopularMoviesStates {
  final List<MovieEntity>movies;
  SuccessPopularStates(this.movies);


}

class FailurePopularStates extends PopularMoviesStates {
  final String errMessage;
  FailurePopularStates(this.errMessage);
}