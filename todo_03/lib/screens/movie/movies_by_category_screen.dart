import 'package:flutter/material.dart';
import 'package:todo_03/models/movie_model.dart';
import 'package:todo_03/providers/movie_provider.dart';
import 'package:todo_03/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';


class MoviesByCategoryScreen extends StatefulWidget {
  final String category;
  const MoviesByCategoryScreen({super.key, required this.category});


  @override
  State<MoviesByCategoryScreen> createState() => _MoviesByCategoryScreenState();
}

class _MoviesByCategoryScreenState extends State<MoviesByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context,listen:false).getMoviesByCategory(widget.category);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
        child: movieList.length == 0 ? Center(
          child: Text('No movies available for this category'),
        ):ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: movieList.length,
            itemBuilder: (BuildContext context, int index) {
              return MovieTile(movie: movieList[index]);;
            }),
      ),
    );
  }
}
