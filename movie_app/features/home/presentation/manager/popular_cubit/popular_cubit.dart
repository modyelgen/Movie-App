import 'package:app_1/movie_app/features/home/domain/use_case/get_popular_use_case.dart';
import 'package:app_1/movie_app/features/home/presentation/manager/popular_cubit/popular_states.dart';
import 'package:bloc/bloc.dart';


class PopularMovieCubit extends Cubit<PopularMoviesStates>{
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  PopularMovieCubit(this.getPopularMoviesUseCase):super(InitialPopularStates());
  Future<void> fetchPopularMovies()async{
    emit(LoadingPopularStates());
    var result= await getPopularMoviesUseCase.call();
    return  result.fold((failure) {
      emit(FailurePopularStates(failure.errMessage));
    }, (movie) => {
      emit(SuccessPopularStates(movie))
    });
  }
}