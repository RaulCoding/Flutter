import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repositories.dart';
import 'package:toktik/domain/datasources/video_post_datasource.dart';



class VideoPostsRepositoryImpl implements VideoPostRepository{
  
  final VideoPostDatasource videoPostDatasource;

  VideoPostsRepositoryImpl({
    required this.videoPostDatasource
  });

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userID) {
    throw UnimplementedError();
  }
  
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDatasource.getTrendingVideosByPage(page);
  }
}