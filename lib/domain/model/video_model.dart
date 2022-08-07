import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtubeapi/core/time_converter.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  factory VideoModel({
    String? channelId,
    String? channelTitle,
    ThumbnailsModel? thumbnails,
    String? title,
    String? description,
    // @TimeConverter() DateTime? publishedAt,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

// VideoModel(channelId: null, channelTitle: null, url: null, width: null, height: null, title: null, description: null),

@freezed
class ThumbnailsModel with _$ThumbnailsModel {
  factory ThumbnailsModel({
    String? url,
    int? width,
    int? height,
  }) = _ThumbnailsModel;

  factory ThumbnailsModel.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsModelFromJson(json);
}
