import 'package:app_1/movie_app/features/home/domain/use_case/get_top_rated_use_case.dart';
import 'package:app_1/movie_app/features/home/presentation/manager/top_rated_cubit/top_rated_states.dart';
import 'package:bloc/bloc.dart';

class TopRatedMovieCubit extends Cubit<TopRatedMoviesStates>{
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  TopRatedMovieCubit(this.getTopRatedMoviesUseCase):super((InitialTopRatedStates()));
  Future<void> fetchTopRatedMovies()async{
    emit(LoadingTopRatedStates());
    var result= await getTopRatedMoviesUseCase.call();
    return  result.fold((failure) {
      emit(FailureTopRatedStates(failure.errMessage));
    }, (movie) => {
      emit(SuccessTopRatedStates(movie))
    });
  }
}