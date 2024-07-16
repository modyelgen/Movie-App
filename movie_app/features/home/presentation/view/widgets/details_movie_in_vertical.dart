import 'package:app_1/movie_app/features/home/presentation/view/widgets/rating_movie.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';

class DetailsOfMovieInList extends StatelessWidget {
  const DetailsOfMovieInList({Key? key,required this.movie}) : super(key: key);
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.68,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movie.title??"",maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            const SizedBox(height: 10,),
            YearAndRating(history: movie.history??"",average: movie.averageRate??0,),
            const Expanded(child: SizedBox()),
            Text(movie.overView??"details are nothing ",maxLines: 2,overflow: TextOverflow.ellipsis,style: const TextStyle(fontSize: 15),),
          ],
        ),
      ),
    );
  }
}