// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  @TimeConverter()
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call(
      {@TimeConverter() DateTime publishedAt,
      String channelId,
      String channelTitle,
      String url,
      int width,
      int height,
      String title,
      String description});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? channelTitle = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoModelCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$_VideoModelCopyWith(
          _$_VideoModel value, $Res Function(_$_VideoModel) then) =
      __$$_VideoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@TimeConverter() DateTime publishedAt,
      String channelId,
      String channelTitle,
      String url,
      int width,
      int height,
      String title,
      String description});
}

/// @nodoc
class __$$_VideoModelCopyWithImpl<$Res> extends _$VideoModelCopyWithImpl<$Res>
    implements _$$_VideoModelCopyWith<$Res> {
  __$$_VideoModelCopyWithImpl(
      _$_VideoModel _value, $Res Function(_$_VideoModel) _then)
      : super(_value, (v) => _then(v as _$_VideoModel));

  @override
  _$_VideoModel get _value => super._value as _$_VideoModel;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? channelTitle = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_VideoModel(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoModel implements _VideoModel {
  const _$_VideoModel(
      {@TimeConverter() required this.publishedAt,
      required this.channelId,
      required this.channelTitle,
      required this.url,
      required this.width,
      required this.height,
      required this.title,
      required this.description});

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoModelFromJson(json);

  @override
  @TimeConverter()
  final DateTime publishedAt;
  @override
  final String channelId;
  @override
  final String channelTitle;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'VideoModel(publishedAt: $publishedAt, channelId: $channelId, channelTitle: $channelTitle, url: $url, width: $width, height: $height, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoModel &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.channelId, channelId) &&
            const DeepCollectionEquality()
                .equals(other.channelTitle, channelTitle) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(channelId),
      const DeepCollectionEquality().hash(channelTitle),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      __$$_VideoModelCopyWithImpl<_$_VideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoModelToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {@TimeConverter() required final DateTime publishedAt,
      required final String channelId,
      required final String channelTitle,
      required final String url,
      required final int width,
      required final int height,
      required final String title,
      required final String description}) = _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  @TimeConverter()
  DateTime get publishedAt;
  @override
  String get channelId;
  @override
  String get channelTitle;
  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
