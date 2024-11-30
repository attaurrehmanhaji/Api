import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'comment_provider.dart';

class Coment extends StatefulWidget {
  const Coment({super.key});

  @override
  State<Coment> createState() => _ComentState();
}

class _ComentState extends State<Coment> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CommentProvider(),

      child: Consumer<CommentProvider>(
        builder: (context , model, child)=> Scaffold(
          appBar: AppBar(
            title: Text("comment "),
          ),body:
          Column(
            children: [







              FutureBuilder(
                  future: model.commentData(),
                  builder: (context, snapshot) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: model.commentList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                              Text('$index ${model.commentList[index].id}'),
                              subtitle: Text('${model.commentList[index].body}'),
                            );
                          }),
                    );
                  }),







            ],
          ),


        ),
      ),
    );
  }
}
