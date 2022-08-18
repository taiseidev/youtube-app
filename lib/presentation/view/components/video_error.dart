import 'package:flutter/material.dart';

class VideoError extends StatelessWidget {
  VideoError(this.error, {Key? key}) : super(key: key);
  StackTrace? error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$error'),
    );
  }
}
