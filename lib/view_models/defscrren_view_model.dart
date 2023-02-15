


import 'package:mvvm_with_api/model/data_model.dart';
import 'package:mvvm_with_api/repositories/post_repositories.dart';
import 'package:mvvm_with_api/view_models/defscreen_view_model.dart';

class DefScreenViewModel{

  final String title = 'Def Screen' ;
  PostRepositories? postRepositories ;
  DefScreenViewModel({this.postRepositories});

  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postRepositories!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();

  }


}