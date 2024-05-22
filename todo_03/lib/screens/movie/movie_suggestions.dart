import 'package:flutter/material.dart';
import 'package:todo_03/models/movie_model.dart';
import 'package:todo_03/widgets/movies/movie_tile.dart';


class MovieSuggestions extends StatefulWidget {
  List<MovieModel> movielist;

  MovieSuggestions({required this.movielist});

  @override
  State<MovieSuggestions> createState() => _MovieSuggestionsState();
}

class _MovieSuggestionsState extends State<MovieSuggestions> {
  @override
  void initState() {
    print('Prints at first');
    // Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    // List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Similar Movies'),
        Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.movielist.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieTile(movie: widget.movielist[index]);
              }),
        ),
      ],
    );
  }
}
