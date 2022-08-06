import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:youtubeapi/app.dart';

void main() async {
  await DotEnv().load();
  runApp(
    const App(),
  );
}
