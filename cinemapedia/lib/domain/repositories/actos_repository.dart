

import '../entities/actor.dart';

abstract class ActorsRepository {
  
  Future <List<Actor>>getActorsbyMovie(String movieId);
  
}