import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/app.dart';
import 'package:youtubeapi/infrastructure/impl/video_api_client_impl.dart';
import 'package:youtubeapi/infrastructure/impl/video_repository_impl.dart';
import 'package:youtubeapi/infrastructure/providers.dart';

void main() async {
  // .envファイル読み込み
  await dotenv.load(fileName: '.env');
  runApp(
    ProviderScope(
      overrides: [
        // アプリ起動時にProviderを上書き
        videoApiClientProvider.overrideWithProvider(videoApiClientImplProvider),
        videoRepositoryProvider
            .overrideWithProvider(videoRepositoryImplProvider),
      ],
      child: const App(),
    ),
  );
}
