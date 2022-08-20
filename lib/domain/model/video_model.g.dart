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
      medium: json['medium'] == null
          ? null
          : MediumModel.fromJson(json['medium'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ThumbnailsModelToJson(_$_ThumbnailsModel instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };

_$_MediumModel _$$_MediumModelFromJson(Map<String, dynamic> json) =>
    _$_MediumModel(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_MediumModelToJson(_$_MediumModel instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
