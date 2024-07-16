import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/movie_entity.dart';

class ImageInVerticalList extends StatelessWidget {
  const ImageInVerticalList({Key? key, required this.movie,}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.27,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 10),
        child: AspectRatio(
          aspectRatio: 2.3 / 3,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                  imageUrl: 'https://image.tmdb.org/t/p/w500${movie
                      .backGroundImage}',
                  fit: BoxFit.fitHeight,
                  errorWidget: (context, string, dynamic) => const Icon(
                      Icons.error))),
        ),
      ),
    );
  }

}