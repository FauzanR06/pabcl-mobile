import 'package:get/get.dart';

class MovieService extends GetConnect {
  Future<List<dynamic>> fetchMovie() async {
    final response = await get(
      "https://api.themoviedb.org/3/movie/popular?api_key=d7c3a3e2f393e14a49c58f689a21df9b");
    if (response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }
}