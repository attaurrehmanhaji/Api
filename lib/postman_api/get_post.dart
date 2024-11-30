import 'package:flutter/material.dart';
import 'package:postmanapi/postman_api/post_provide.dart';
import 'package:provider/provider.dart';

class GetPost extends StatefulWidget {
  const GetPost({super.key});
  @override
  State<GetPost> createState() => _GetPostState();
}

class _GetPostState extends State<GetPost> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostProvider(),
      child: Consumer<PostProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("Post api"),
          ),
          body: Column(
            children: [
              FutureBuilder(
                  future: model.getPostData(),
                  builder: (context, snapshot) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: model.postList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                                  Text('$index ${model.postList[index].title}'),
                              subtitle: Text('${model.postList[index].body}'),
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
