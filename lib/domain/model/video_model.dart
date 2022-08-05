import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtubeapi/core/time_converter.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String channelId,
    required String channelTitle,
    required String url,
    required int width,
    required int height,
    required String title,
    required String description,
    @TimeConverter() required DateTime publishedAt,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
