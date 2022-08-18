import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:youtubeapi/infrastructure/providers.dart';
import 'package:youtubeapi/infrastructure/video_api_client.dart';
import 'package:youtubeapi/infrastructure/video_repository.dart';

final videoRepositoryImplProvider = Provider<VideoRepository>(
  (ref) => VideoRepositoryImpl(
    ref.read(videoApiClientProvider),
  ),
);

class VideoRepositoryImpl extends VideoRepository {
  VideoRepositoryImpl(this._apiClient);
  final VideoApiClient _apiClient;
  @override
  Future<List<VideoModel>> fetchVideos(
    String word,
  ) async {
    final apiKey = dotenv.env["API_KEY"];
    final responseBody =
        await _apiClient.get('/search?q=$word&key=$apiKey&part=snippet');
    final decodedJson = json.decode(responseBody) as Map<String, dynamic>;
    final repositoryList = <VideoModel>[];
    if (decodedJson['totalResults'] == 0) {
      return repositoryList;
    }
    for (final data in decodedJson['items']) {
      repositoryList
          .add(VideoModel.fromJson(data['snippet'] as Map<String, dynamic>));
    }
    return repositoryList;
  }
}
