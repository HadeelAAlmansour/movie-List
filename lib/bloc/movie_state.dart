part of 'movie_bloc.dart';

@immutable
abstract class MovieState {
  const MovieState();

  @override
  List<Object> get props => [];
}

class initialState extends MovieState {}

class loadedState extends MovieState {
  final List<Movie> movies;

  const loadedState(this.movies);

  @override
  List<Object> get props => [movies];
}
