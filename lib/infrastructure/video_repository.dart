import 'package:youtubeapi/domain/model/video_model.dart';

abstract class VideoRepository {
  Future<List<VideoModel>> fetchVideos(String word);
}
