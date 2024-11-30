import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:postmanapi/album_api/album_data.dart';
import 'package:postmanapi/postman_api/get_post.dart';

import 'coment_api/coment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home screen"),
        
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetPost()));
            },
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,

                ),
                child: Center(child: Text("Post api",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Coment()));
            },
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,

                ),
                child: Center(child: Text("Comment api",style: TextStyle(color: Colors.white, fontSize: 16),)),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AlbumData()));
            },
            child: Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,

                ),
                child: Center(child: Text("Album api",style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
