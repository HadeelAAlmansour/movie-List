import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moviesbloc/models/movie.dart';

class moviesapi {
  static Future<List<Movie>> fetchMovies() async {
    final dio = Dio();
    late List<dynamic> result;
    List<Movie> movies = [];
    Movie currentMovie;
    try {
      final response = await dio.get(
          'https://api.themoviedb.org/3/trending/movie/day?api_key here');
      print(response.data);

      if (response.statusCode == 200) {
        result = response.data["results"];

        for (int x = 0; x < result.length; x++) {
          currentMovie = Movie(
              poster_path: result[x]['poster_path'],
              title: result[x]['title'],
              overview: result[x]['overview']);

          movies.add(currentMovie);
        }
      } else {
        debugPrint('Error: ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
    return movies;
  }
}
