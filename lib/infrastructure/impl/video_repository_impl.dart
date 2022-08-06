import 'dart:convert';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:youtubeapi/infrastructure/video_api_client.dart';
import 'package:youtubeapi/infrastructure/video_repository.dart';

class VideoRepositoryImpl extends VideoRepository {
  VideoRepositoryImpl(this._apiClient);
  final VideoApiClient _apiClient;
  @override
  Future<List<VideoModel>> fetchVideos(
    String word,
  ) async {
    const apiKey = 'apiKey';
    const part = 'snippet';
    final responseBody =
        await _apiClient.get('/search?q=$word&key=$apiKey&part=$part');
    final decodedJson = json.decode(responseBody) as Map<String, dynamic>;
    final repositoryList = <VideoModel>[];
    if (decodedJson['totalResults'] == 0) {
      return repositoryList;
    }
    for (final itemJson in decodedJson['items']) {
      repositoryList.add(VideoModel.fromJson(itemJson as Map<String, dynamic>));
    }
    return repositoryList;
  }
}
