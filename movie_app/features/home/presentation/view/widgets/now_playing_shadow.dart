import 'package:animate_do/animate_do.dart';
import 'package:app_1/movie_app/features/home/presentation/manager/now_playing_cubit/new_moving_cubit.dart';
import 'package:app_1/movie_app/features/home/presentation/manager/now_playing_cubit/new_moving_states.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/align_with_shader.dart';
import 'package:app_1/movie_app/features/home/presentation/view/widgets/sahder_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NowPlayingShadow extends StatelessWidget {
  const NowPlayingShadow({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height*0.45;
    return BlocBuilder<NowPlayingCubit,NowPlayingStates>(
      builder: (context,state){
         if(state is SuccessNowPlayingStates){
          return SizedBox(
              height: height,
              width: double.infinity,
              child:FadeIn(
                duration: const Duration(seconds: 2),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    height: height,
                    viewportFraction: 1.0,
                    onPageChanged: (index,reason){},
                    scrollDirection: Axis.horizontal,
                  ),
                  items: state.movies.map((item) {
                    return GestureDetector(
                      child: Padding(
                        padding:const EdgeInsets.only(bottom: 20),
                        child: Stack(
                          children: [
                            ShaderView(image: item.backGroundImage??"",),
                            AlignWithShader(title: item.title!),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
          );
        }
        else if (state is LoadingNowPlayingStates){
          return   const Center(child: CircularProgressIndicator());
        }
        else if(state is FailureNowPlayingStates){
           return Center(child: Text(state.errMessage),);
         }
        else {
          return const CircularProgressIndicator(color: Colors.black,);
         }
      },

    );
  }
}



