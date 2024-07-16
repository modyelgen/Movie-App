import 'package:app_1/movie_app/core/utilites/constants.dart';
import 'package:dio/dio.dart';

class ApiMovieServices{
  final Dio dio;
  ApiMovieServices(this.dio);
  Future<Map<String,dynamic>>getResult({required type,required endPoint})async{
    var response=await dio.get('${MovieConstants.baseUrl}$type/$endPoint?api_key=${MovieConstants.myApiKey}');
    return response.data;
  }
}
//https://api.themoviedb.org/3/movie/now_playing?api_key=2589958615f4588bff129660c0d9814d