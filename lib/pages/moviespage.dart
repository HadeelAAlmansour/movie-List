import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesbloc/widget/moviesWidget.dart';

import '../bloc/movie_bloc.dart';

class moviesPage extends StatelessWidget {
  const moviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('movies List'),
      ),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is loadedState) {
            return moviesWidget(movies: state.movies);
          }
          return Container();
        },
      ),
    );
  }
}
