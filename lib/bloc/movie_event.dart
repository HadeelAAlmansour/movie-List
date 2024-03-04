part of 'movie_bloc.dart';

@immutable
abstract class MovieEvent {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class getAllMoviesEvent extends MovieEvent {}
