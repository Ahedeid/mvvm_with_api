

import 'package:dio/dio.dart';
import 'package:mvvm_with_api/model/data_model.dart';

import 'package:mvvm_with_api/repositories/post_repositories.dart';

class postApi extends PostRepositories{
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try{
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();

    }catch (exception){
      print(exception);
    }
    return posts ;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

  
}


class PostDummy extends PostRepositories{
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try{
      var respons = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = respons.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();

    }catch (exception){
      print(exception);
    }
    return posts ;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }


}