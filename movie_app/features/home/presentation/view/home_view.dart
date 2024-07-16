import 'package:app_1/movie_app/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeMovieView extends StatelessWidget {
  const HomeMovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: HomeMovieViewBody(),
        ));
  }
}
