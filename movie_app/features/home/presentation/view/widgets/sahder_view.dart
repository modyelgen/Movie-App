import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShaderView extends StatelessWidget {
  const ShaderView({Key? key,required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,end: Alignment.bottomCenter,
            colors:[
              Colors.transparent,Colors.black,Colors.black,Colors.transparent,
            ],
            stops: [0, 0, .6, 1],
          ).createShader(Rect.fromLTRB(0,0,rect.width, rect.height),);
        },
        blendMode: BlendMode.dstIn,
        child: CachedNetworkImage(imageUrl: 'https://image.tmdb.org/t/p/w500$image',errorWidget: (context,string ,dynamic)=>const Icon(Icons.error),fit: BoxFit.cover,width: double.infinity,height: MediaQuery.of(context).size.height*0.4,)
    );
  }
}