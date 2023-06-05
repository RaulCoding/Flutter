

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');


final searchedMoviesProvider = StateNotifierProvider<SearchedMoviedNotifier,List<Movie>>((ref) {
  
  final movieRepository = ref.read(movieRepositoryProvider);
  
  return SearchedMoviedNotifier(
    searchMovies: movieRepository.searchMovies, 
    ref: ref
    );
});

typedef SearchMoviesCallback = Future <List<Movie>> Function (String query);

class SearchedMoviedNotifier extends StateNotifier<List<Movie>>{
  
  final SearchMoviesCallback searchMovies;
  final Ref ref;
  
  SearchedMoviedNotifier({
    required this.searchMovies,
    required this.ref, 
  })  : super([]);
  
  
  Future<List<Movie>> searchMoviesByQuery(String query) async{
    
    final List<Movie> movies = await searchMovies (query);
    ref.read(searchQueryProvider.notifier).update((state) => query);
    
    state = movies;
    return movies;
    
  }

  
  
  
}