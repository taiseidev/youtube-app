import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/infrastructure/video_api_client.dart';
import 'package:youtubeapi/infrastructure/video_repository.dart';

final videoApiClientProvider = Provider<VideoApiClient>(
  (_) => throw UnimplementedError(),
);

final videoRepositoryProvider = Provider<VideoRepository>(
  (_) => throw UnimplementedError(),
);
