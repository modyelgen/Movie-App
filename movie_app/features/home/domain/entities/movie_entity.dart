import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable{
  final int id;
  final String? title;
  final String? backGroundImage;
  final String? history;
  final num ?averageRate;
  final String? overView;
  final List<int>? genreId;

  const MovieEntity(
      {required this.id,
      required this.title,
      required this.backGroundImage,
      required this.averageRate,
      required this.genreId,
      required this.overView,
      required this.history
      });

  @override
  List<Object?> get props =>[
    id,
    title,
    backGroundImage,
    history,
    averageRate,
    overView,
    genreId,

  ];

}