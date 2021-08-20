import 'package:flutter/material.dart';
import 'package:baby_tube/video_list.dart';
import 'package:baby_tube/models/youtube_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(
      listData: youtubeData,
    );
  }
}
