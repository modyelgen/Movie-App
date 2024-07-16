import 'package:flutter/material.dart';

class AlignWithShader extends StatelessWidget {
  const AlignWithShader({Key? key,required this.title}) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.fiber_manual_record,color: Colors.red,size: 10,),
              SizedBox(width: 3,),
              Text('NOW PLAYING',style: TextStyle(fontSize: 12),),
            ],
          ),
          const SizedBox(height: 16,),
           Padding(padding:  const EdgeInsets.only(bottom: 10),child:  Text(title.toUpperCase(),maxLines: 2,textAlign: TextAlign.center,
             overflow:TextOverflow.ellipsis,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}