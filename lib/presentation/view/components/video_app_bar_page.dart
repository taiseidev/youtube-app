import 'package:flutter/material.dart';

class VideoAppBar extends StatelessWidget {
  const VideoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 159, 35, 22),
        title: const Text(
          'VideoRepository',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Rampart_One',
          ),
        ));
  }
}
