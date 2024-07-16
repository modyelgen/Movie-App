import 'package:app_1/movie_app/core/utilites/api_services.dart';
import 'package:app_1/movie_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:app_1/movie_app/features/home/data/repos/movie_home_repo_imp.dart';
import 'package:app_1/movie_app/features/home/domain/use_case/get_popular_use_case.dart';
import 'package:app_1/movie_app/features/home/domain/use_case/get_top_rated_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/domain/use_case/get_now_playing_movies_use_case.dart';

final getIt=GetIt.instance;
void setUpMovies(){
  getIt.registerSingleton<ApiMovieServices>(ApiMovieServices(Dio()));
  getIt.registerSingleton<MovieHomeRepoImp>(MovieHomeRepoImp(HomeRemoteDataImp(getIt.get<ApiMovieServices>())));
  getIt.registerSingleton<GetNowPlayingMoviesUseCase>(GetNowPlayingMoviesUseCase(getIt.get<MovieHomeRepoImp>()));
  getIt.registerSingleton<GetTopRatedMoviesUseCase>(GetTopRatedMoviesUseCase(getIt.get<MovieHomeRepoImp>()));
  getIt.registerSingleton<GetPopularMoviesUseCase>(GetPopularMoviesUseCase(getIt.get<MovieHomeRepoImp>()));
}