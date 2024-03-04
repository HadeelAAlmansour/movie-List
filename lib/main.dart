import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesbloc/api/movieapi.dart';
import 'package:moviesbloc/bloc/movie_bloc.dart';
import 'package:moviesbloc/pages/moviespage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieBloc(
          // Moviesapi: moviesapi()
          )
        ..add(getAllMoviesEvent()),
      child: const MaterialApp(title: 'movies', home: moviesPage()),
    );
  }
}
