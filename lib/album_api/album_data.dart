import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'album_provider.dart';

class AlbumData extends StatefulWidget {
  const AlbumData({super.key});

  @override
  State<AlbumData> createState() => _AlbumDataState();
}

class _AlbumDataState extends State<AlbumData> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlbumProvider(),
      child: Consumer<AlbumProvider>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
