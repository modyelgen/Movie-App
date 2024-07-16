import 'package:app_1/movie_app/features/home/presentation/view/widgets/movies_list_body.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/movie_entity.dart';

class MoviesListVertical extends StatelessWidget {
  const MoviesListVertical({Key? key,required this.movies,required this.title}) : super(key: key);
final List<MovieEntity>movies;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff1e1e29),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
         leading: IconButton(
           onPressed: (){
             Navigator.pop(context);
           },
           icon:const Icon(Icons.arrow_back_ios_new),
         ),
        title:  Text('$title Movies'),
        titleTextStyle:const TextStyle(fontSize: 18),
      ),
      body:  MoviesListVerticalBody(movies: movies,),
    );
  }
}


