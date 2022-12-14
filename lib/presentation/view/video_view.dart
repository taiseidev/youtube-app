import 'package:flutter/material.dart';
import 'package:youtubeapi/presentation/view/components/video_app_bar_page.dart';
import 'package:youtubeapi/presentation/view/components/video_body_page.dart';

class VideoView extends StatelessWidget {
  const VideoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          70,
        ),
        child: const VideoAppBar(),
      ),
      body: VideoBody(),
    );
  }
}
