import 'package:flutter/material.dart';

class YearAndRating extends StatelessWidget {
  final String history;
  final num average;
  const YearAndRating({Key? key,required this.average,required this.history}) : super(key: key);
  String  textEdit({required String years}){
    String dateString=years;
    List<String>dateParts=dateString.split("-");
    String year=dateParts.first;
    return year;
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width:60,
          height: 25,
          decoration: BoxDecoration(
            color: const Color(0xffff6f6f),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Align(alignment: Alignment.center,child: Text(textEdit(years:history),)),),
        const SizedBox(width: 25,),
        const Icon(Icons.star,color: Colors.amber,),
        Text(average.toString()),

      ],
    );
  }
}