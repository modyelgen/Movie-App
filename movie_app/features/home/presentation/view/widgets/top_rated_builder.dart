import 'package:app_1/movie_app/features/home/presentation/view/widgets/list_type_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/top_rated_cubit/top_rated_cubit.dart';
import '../../manager/top_rated_cubit/top_rated_states.dart';

class TopRatedMoviesBuilder extends StatelessWidget {
  const TopRatedMoviesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<TopRatedMovieCubit,TopRatedMoviesStates>(builder: (context,state){
      debugPrint('top rated rebuild');
      if (state is SuccessTopRatedStates){
        return ListAndTypePart(title: 'Top Rated',movies: state.movies,);
      }
      else if(state is FailureTopRatedStates){
        return Center(child: Text(state.errMessage),);
      }
      else{
        return const Center(child: CircularProgressIndicator(),) ;
      }
    },
    );
  }
}