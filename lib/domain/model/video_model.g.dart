// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      publishedAt:
          const TimeConverter().fromJson(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      channelTitle: json['channelTitle'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'publishedAt': const TimeConverter().toJson(instance.publishedAt),
      'channelId': instance.channelId,
      'channelTitle': instance.channelTitle,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'title': instance.title,
      'description': instance.description,
    };
