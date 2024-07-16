import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListMovieItem extends StatelessWidget {
  const ListMovieItem({Key? key,required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.3/3,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child:  CachedNetworkImage(imageUrl: 'https://image.tmdb.org/t/p/w500$image',
                fit: BoxFit.fitHeight,errorWidget: (context,string ,dynamic)=>const Icon(Icons.error))),
      ),
    );
  }
}