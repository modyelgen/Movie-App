import 'package:app_1/movie_app/features/home/presentation/view/widgets/list_type_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/popular_cubit/popular_cubit.dart';
import '../../manager/popular_cubit/popular_states.dart';

class PopularMoviesBuilder extends StatelessWidget {
  const PopularMoviesBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<PopularMovieCubit,PopularMoviesStates>(builder: (context,state){
      debugPrint('popular rebuild');
      if (state is SuccessPopularStates){
        return ListAndTypePart(title: 'Popular',movies: state.movies,);
      }
      else if(state is FailurePopularStates){
        return Center(child: Text(state.errMessage),);
      }
      else{
        return const Center(child: CircularProgressIndicator(),) ;
      }
    },
    );
  }
}