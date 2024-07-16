import 'package:app_1/movie_app/features/home/domain/repos/home_repo.dart';
import 'package:app_1/my_book_app/core/errors/failures.dart';
import 'package:app_1/my_book_app/core/use_case/general_use_case.dart';
import 'package:dartz/dartz.dart';

import '../entities/movie_entity.dart';

class GetTopRatedMoviesUseCase extends UseCase<List<MovieEntity>,NoParam>{
  final MovieHomeRepo homeRepo;
  GetTopRatedMoviesUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<MovieEntity>>> call([NoParam? param]) async{
    return await homeRepo.getTopRatedMovies();
  }

}