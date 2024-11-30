import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'album_model.dart';


class AlbumProvider extends ChangeNotifier{
  List<AlbumModel> albumList = [];

  Future<List<AlbumModel>> albumData() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    var maxdata = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (var data in maxdata) {
        albumList.add(AlbumModel.fromJson(data));
      }
      notifyListeners();
      return albumList;
    } else {
      return albumList;
    }
  }


}


