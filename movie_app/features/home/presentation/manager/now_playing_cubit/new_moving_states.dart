import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';

abstract class NowPlayingStates{}

class InitialNowPlayingStates extends NowPlayingStates {}

class LoadingNowPlayingStates extends NowPlayingStates {}

class SuccessNowPlayingStates extends NowPlayingStates {
  final List<MovieEntity>movies;
  SuccessNowPlayingStates(this.movies);


}

class FailureNowPlayingStates extends NowPlayingStates {
  final String errMessage;
  FailureNowPlayingStates(this.errMessage);
}