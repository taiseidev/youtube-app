import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:youtubeapi/infrastructure/providers.dart';
import 'package:youtubeapi/infrastructure/video_repository.dart';

final videoNotifierProvider = StateNotifierProvider.autoDispose<VideoNotifier,
    AsyncValue<List<VideoModel>>>(
  (ref) => VideoNotifier(ref.read(videoRepositoryProvider)),
);

class VideoNotifier extends StateNotifier<AsyncValue<List<VideoModel>>> {
  VideoNotifier(this._videoRepository) : super(const AsyncValue.loading()) {
    searchVideo('flutter');
  }

  final VideoRepository _videoRepository;

  Future<void> searchVideo(String word) async {
    if (word.isEmpty) {
      return;
    }

    state = const AsyncValue.loading();

    try {
      final videoList = await _videoRepository.fetchVideos(word);
      state = AsyncValue.data(videoList);
    } on Exception catch (error) {
      state = AsyncValue.error(error);
    }
  }
}
