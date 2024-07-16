import 'package:app_1/movie_app/features/home/data/data_source/home_remote_data_source.dart';
import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:app_1/movie_app/features/home/domain/repos/home_repo.dart';
import 'package:app_1/my_book_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class MovieHomeRepoImp extends MovieHomeRepo{
  final MovieHomeRemoteDataSource homeRemoteDataSource;
  MovieHomeRepoImp(this.homeRemoteDataSource);
  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies() async{
  try {
    List<MovieEntity> movies =await homeRemoteDataSource.fetchNowPlayingMovies();
    return right(movies);
  }  catch (e) {
    if(e is DioError){
      return left(ServerFailure.fromDioError(e));
    }
    return left(ServerFailure(e.toString()));
  }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async{
    try {
      List<MovieEntity> movies =await homeRemoteDataSource.fetchPopularMovies();
      return right(movies);
    }  catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async{
    try {
      List<MovieEntity> movies =await homeRemoteDataSource.fetchTopRatedMovies();
      return right(movies);
    }  catch (e) {
      if(e is DioError){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}