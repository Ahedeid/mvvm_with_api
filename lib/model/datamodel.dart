

class PostModel{
  int? userId ;
  int? id ;
  String? title ;
  String? boody ;

  PostModel({this.title,this.id,this.boody,this.userId});
  PostModel.fromJson(Map<String,dynamic> json){
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    boody = json['body'];
  }

  Map<String,dynamic> toJson(){
    return {'userId':userId,'id':id,'title':title,'body':boody};
  }

}