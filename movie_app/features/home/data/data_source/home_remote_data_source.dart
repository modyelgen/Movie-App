import 'package:app_1/movie_app/features/home/data/model/MovieModel.dart';
import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:dio/dio.dart';

import '../../../../core/utilites/api_services.dart';

abstract class MovieHomeRemoteDataSource{
  Future<List<MovieEntity>>fetchNowPlayingMovies();
  Future<List<MovieEntity>>fetchTopRatedMovies();
  Future<List<MovieEntity>>fetchPopularMovies();

}
class HomeRemoteDataImp extends MovieHomeRemoteDataSource {
  final ApiMovieServices apiMovieService;
  HomeRemoteDataImp(this.apiMovieService);
  @override
  Future<List<MovieEntity>> fetchNowPlayingMovies() async{
  var result= await apiMovieService.getResult(type: 'movie', endPoint: 'now_playing');
    List<MovieEntity>movies=getList(result);
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchPopularMovies()async {
   var result=await apiMovieService.getResult(type: 'movie', endPoint: 'popular');
   List<MovieEntity>movies=getList(result);
   return movies;
  }

  @override
  Future<List<MovieEntity>> fetchTopRatedMovies() async{
    var result=await apiMovieService.getResult(type: 'movie', endPoint: 'top_rated');
    List<MovieEntity>movies=getList(result);
    return movies;
  }
  List<MovieEntity> getList(Map<String,dynamic>data){
    List<MovieEntity>movies=[];
  for(var item in data['results']){
  movies.add(MovieModel.fromJson(item));
  }
  return movies;
  }
}