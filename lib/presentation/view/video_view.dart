import 'package:flutter/material.dart';
import 'package:youtubeapi/presentation/view/components/video_app_bar.dart';
import 'package:youtubeapi/presentation/view/components/video_body.dart';

class VideoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          70,
        ),
        child: VideoAppBar(),
      ),
      body: VideoBody(),
    );
  }
}