import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:app_1/my_book_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class MovieHomeRepo{
  Future<Either<Failure,List<MovieEntity>>> getNowPlayingMovies();
  Future<Either<Failure,List<MovieEntity>>> getPopularMovies();
  Future<Either<Failure,List<MovieEntity>>> getTopRatedMovies();
}