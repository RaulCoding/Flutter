


import 'package:cinemapedia/domain/entities/actor.dart';

abstract class ActorsDataSource {
  
  Future<List<Actor>> getActorsbyMovie(String movieId);
}