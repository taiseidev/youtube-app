// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      channelId: json['channelId'] as String?,
      channelTitle: json['channelTitle'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : ThumbnailsModel.fromJson(
              json['thumbnails'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'channelTitle': instance.channelTitle,
      'thumbnails': instance.thumbnails,
      'title': instance.title,
      'description': instance.description,
    };

_$_ThumbnailsModel _$$_ThumbnailsModelFromJson(Map<String, dynamic> json) =>
    _$_ThumbnailsModel(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_ThumbnailsModelToJson(_$_ThumbnailsModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
