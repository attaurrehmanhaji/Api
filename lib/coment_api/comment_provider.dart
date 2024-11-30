import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


import 'comment_model.dart';

class CommentProvider extends ChangeNotifier {
  List<CommentModel> commentList = [];
  bool isloading=false;

  Future<List<CommentModel>> commentData() async {



    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    var maxdata = jsonDecode(response.body.toString());
    print(maxdata);
    print('this is testing ');
    if(
    response.statusCode==200
    ){
      for(var data in maxdata){
        commentList.add(CommentModel.fromJson(data));
      }
      notifyListeners();
      return commentList;
    }else{
      return commentList;
    }
  }
}




