import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/movie.dart';

class moviesWidget extends StatelessWidget {
  final List<Movie> movies;
  const moviesWidget({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: SizedBox(
              width: 100,
              height: 150,
              child: Image.network(
                'https://image.tmdb.org/t/p/w200${movies[index].poster_path}',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              movies[index].title,
              style: const TextStyle(fontSize: 24),
            ),
            subtitle: Text(movies[index].overview),
          ),
        );
      },
    );

    /*  ListView.builder(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: SizedBox(
              width: 100,
              height: 150,
              child: Image.network(
                'https://image.tmdb.org/t/p/w200${movies[index].poster_path}',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              movies[index].title,
              style: const TextStyle(fontSize: 24),
            ),
            subtitle: Text(movies[index].overview),
          ),
        );
      },
    );*/
  }
}
