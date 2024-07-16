import 'package:app_1/movie_app/features/home/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity{
  const MovieModel({
       this.backdropPath,
      this.releaseDate,
      this.genreIds, 
      required this.movieId,
      required this.name,
      this.originCountry, 
      this.originalLanguage, 
      this.originalName, 
      this.overview, 
      this.popularity, 
      this.posterPath, 
      this.voteAverage, 
      this.voteCount,}) : super(id:movieId,title:name,history:releaseDate, overView:overview, backGroundImage:backdropPath,averageRate:voteAverage ,genreId:genreIds);

  factory MovieModel.fromJson(Map<String,dynamic>json)=> MovieModel(
    backdropPath : json['backdrop_path']??"",
    releaseDate : json['release_date']??"",
    name: json['title']??json['name'],
    movieId: json['id'],
    genreIds : json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [],
    originCountry :json['origin_country'] != null ? json['origin_country'].cast<String>() : [],
    originalLanguage :json['original_language'],
    originalName : json['original_name']??" ",
    overview : json['overview']??'Sorry There is no details for that movie',
  popularity : json['popularity'],
  posterPath : json['poster_path']??"",
  voteAverage : json['vote_average'],
  voteCount : json['vote_count'],
  );
  final String? backdropPath;
  final String? releaseDate;
  final List<int>? genreIds;
  final int movieId;
  final String? name;
  final List<String>?originCountry;
 final String? originalLanguage;
  final String? originalName;
  final String? overview;
 final double? popularity;
  final String? posterPath;
  final num? voteAverage;
  final int? voteCount;

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   map['backdrop_path'] = backdropPath;
  //   map['first_air_date'] = firstAirDate;
  //   map['genre_ids'] = genreIds;
  //   map['id'] = id;
  //   map['name'] = name;
  //   map['origin_country'] = originCountry;
  //   map['original_language'] = originalLanguage;
  //   map['original_name'] = originalName;
  //   map['overview'] = overview;
  //   map['popularity'] = popularity;
  //   map['poster_path'] = posterPath;
  //   map['vote_average'] = voteAverage;
  //   map['vote_count'] = voteCount;
  //   return map;
  // }

}