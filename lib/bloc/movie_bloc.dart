import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:moviesbloc/api/movieapi.dart';

import '../models/movie.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  // final moviesapi MoviesApi;
  MovieBloc(
      // {required this.MoviesApi}
      )
      : super(initialState()) {
    on<MovieEvent>((event, emit) async {
      if (event is getAllMoviesEvent) {
        try {
          //  final moviesapi _movies = moviesapi();

          final _movies = await moviesapi.fetchMovies();
          emit(loadedState(_movies));
        } catch (e) {
          debugPrint('Exception: $e');
        }
      }
    });
  }
}
