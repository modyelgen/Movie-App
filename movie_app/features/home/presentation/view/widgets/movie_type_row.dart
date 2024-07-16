import 'package:app_1/movie_app/features/home/presentation/view/movies_list.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';

class MovieTypeRow extends StatelessWidget {
  const MovieTypeRow({Key? key,required this.title,required this.movie}) : super(key: key);
  final String title;
  final List<MovieEntity>movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(children: [
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),
        const  Spacer(),
        const Text('See More',style: TextStyle(fontSize: 12),),
        IconButton(
            padding:EdgeInsets.zero,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MoviesListVertical(movies: movie,title: title,)));
            }
            ,
            icon: const Icon(Icons.arrow_forward_ios,size: 16,))
      ],),
    );
  }
}