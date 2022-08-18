import 'package:flutter/material.dart';

class VideoLoading extends StatelessWidget {
  const VideoLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
