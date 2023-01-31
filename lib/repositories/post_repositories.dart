

import '../model/datamodel.dart';

abstract class PostRepositories{
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}