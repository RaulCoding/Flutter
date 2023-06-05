import 'package:cinemapedia/domain/datasources/actos_datasource.dart';
import 'package:cinemapedia/domain/repositories/actos_repository.dart';
import 'package:cinemapedia/domain/entities/actor.dart';


class ActorRepositoryImpl extends ActorsRepository {
  
  final ActorsDataSource dataSource;
  ActorRepositoryImpl(this.dataSource);
  
  @override
  Future<List<Actor>> getActorsbyMovie(String movieId) {
    return dataSource.getActorsbyMovie(movieId);
  }
  
}