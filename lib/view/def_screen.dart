import 'package:flutter/material.dart';
import 'package:mvvm_with_api/view_models/defscreen_view_model.dart';
import 'package:mvvm_with_api/view_models/defscrren_view_model.dart';
import '../repositories/posts_api.dart';


class DefScreen extends StatelessWidget {
  DefScreen({Key? key}) : super(key: key);

  var defModelView = DefScreenViewModel(postRepositories: PostDummy());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(defModelView.title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
          future:defModelView.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }
            else {
              List<PostViewModel>? posts = snapshot.data;
              return ListView.builder(
                  itemCount: posts?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        posts![index].title,
                      ),
                    );
                  });
            }
          }),
    );
  }

  }

