import 'package:app_1/movie_app/features/home/presentation/manager/now_playing_cubit/new_moving_states.dart';
import 'package:bloc/bloc.dart';

import '../../../domain/use_case/get_now_playing_movies_use_case.dart';

class NowPlayingCubit extends Cubit<NowPlayingStates>{
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  NowPlayingCubit(this.getNowPlayingMoviesUseCase):super(InitialNowPlayingStates());
  Future<void> fetchNowPlayingMovies()async{
    emit(LoadingNowPlayingStates());
  var result= await getNowPlayingMoviesUseCase.call();
 return  result.fold((failure) {
   emit(FailureNowPlayingStates(failure.errMessage));
 }, (movie) => {
   emit(SuccessNowPlayingStates(movie))
 });
  }
}