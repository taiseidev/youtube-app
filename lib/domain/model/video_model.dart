import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}

@freezed
class ThumbnailsModel with _$ThumbnailsModel {
  factory ThumbnailsModel({
    MediumModel? medium,
  }) = _ThumbnailsModel;

  factory ThumbnailsModel.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsModelFromJson(json);
}

@freezed
class MediumModel with _$MediumModel {
  factory MediumModel({
    String? url,
  }) = _MediumModel;

  factory MediumModel.fromJson(Map<String, dynamic> json) =>
      _$MediumModelFromJson(json);
}
