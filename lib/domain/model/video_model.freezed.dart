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
  String? get channelId => throw _privateConstructorUsedError;
  String? get channelTitle => throw _privateConstructorUsedError;
  ThumbnailsModel? get thumbnails => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
      {String? channelId,
      String? channelTitle,
      ThumbnailsModel? thumbnails,
      String? title,
      String? description});

  $ThumbnailsModelCopyWith<$Res>? get thumbnails;
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object? channelId = freezed,
    Object? channelTitle = freezed,
    Object? thumbnails = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ThumbnailsModelCopyWith<$Res>? get thumbnails {
    if (_value.thumbnails == null) {
      return null;
    }

    return $ThumbnailsModelCopyWith<$Res>(_value.thumbnails!, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
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
      {String? channelId,
      String? channelTitle,
      ThumbnailsModel? thumbnails,
      String? title,
      String? description});

  @override
  $ThumbnailsModelCopyWith<$Res>? get thumbnails;
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
    Object? channelId = freezed,
    Object? channelTitle = freezed,
    Object? thumbnails = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_VideoModel(
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailsModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoModel implements _VideoModel {
  _$_VideoModel(
      {this.channelId,
      this.channelTitle,
      this.thumbnails,
      this.title,
      this.description});

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoModelFromJson(json);

  @override
  final String? channelId;
  @override
  final String? channelTitle;
  @override
  final ThumbnailsModel? thumbnails;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'VideoModel(channelId: $channelId, channelTitle: $channelTitle, thumbnails: $thumbnails, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoModel &&
            const DeepCollectionEquality().equals(other.channelId, channelId) &&
            const DeepCollectionEquality()
                .equals(other.channelTitle, channelTitle) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(channelId),
      const DeepCollectionEquality().hash(channelTitle),
      const DeepCollectionEquality().hash(thumbnails),
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
  factory _VideoModel(
      {final String? channelId,
      final String? channelTitle,
      final ThumbnailsModel? thumbnails,
      final String? title,
      final String? description}) = _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  String? get channelId;
  @override
  String? get channelTitle;
  @override
  ThumbnailsModel? get thumbnails;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ThumbnailsModel _$ThumbnailsModelFromJson(Map<String, dynamic> json) {
  return _ThumbnailsModel.fromJson(json);
}

/// @nodoc
mixin _$ThumbnailsModel {
  MediumModel? get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsModelCopyWith<ThumbnailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsModelCopyWith<$Res> {
  factory $ThumbnailsModelCopyWith(
          ThumbnailsModel value, $Res Function(ThumbnailsModel) then) =
      _$ThumbnailsModelCopyWithImpl<$Res>;
  $Res call({MediumModel? medium});

  $MediumModelCopyWith<$Res>? get medium;
}

/// @nodoc
class _$ThumbnailsModelCopyWithImpl<$Res>
    implements $ThumbnailsModelCopyWith<$Res> {
  _$ThumbnailsModelCopyWithImpl(this._value, this._then);

  final ThumbnailsModel _value;
  // ignore: unused_field
  final $Res Function(ThumbnailsModel) _then;

  @override
  $Res call({
    Object? medium = freezed,
  }) {
    return _then(_value.copyWith(
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as MediumModel?,
    ));
  }

  @override
  $MediumModelCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $MediumModelCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value));
    });
  }
}

/// @nodoc
abstract class _$$_ThumbnailsModelCopyWith<$Res>
    implements $ThumbnailsModelCopyWith<$Res> {
  factory _$$_ThumbnailsModelCopyWith(
          _$_ThumbnailsModel value, $Res Function(_$_ThumbnailsModel) then) =
      __$$_ThumbnailsModelCopyWithImpl<$Res>;
  @override
  $Res call({MediumModel? medium});

  @override
  $MediumModelCopyWith<$Res>? get medium;
}

/// @nodoc
class __$$_ThumbnailsModelCopyWithImpl<$Res>
    extends _$ThumbnailsModelCopyWithImpl<$Res>
    implements _$$_ThumbnailsModelCopyWith<$Res> {
  __$$_ThumbnailsModelCopyWithImpl(
      _$_ThumbnailsModel _value, $Res Function(_$_ThumbnailsModel) _then)
      : super(_value, (v) => _then(v as _$_ThumbnailsModel));

  @override
  _$_ThumbnailsModel get _value => super._value as _$_ThumbnailsModel;

  @override
  $Res call({
    Object? medium = freezed,
  }) {
    return _then(_$_ThumbnailsModel(
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as MediumModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThumbnailsModel implements _ThumbnailsModel {
  _$_ThumbnailsModel({this.medium});

  factory _$_ThumbnailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailsModelFromJson(json);

  @override
  final MediumModel? medium;

  @override
  String toString() {
    return 'ThumbnailsModel(medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThumbnailsModel &&
            const DeepCollectionEquality().equals(other.medium, medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(medium));

  @JsonKey(ignore: true)
  @override
  _$$_ThumbnailsModelCopyWith<_$_ThumbnailsModel> get copyWith =>
      __$$_ThumbnailsModelCopyWithImpl<_$_ThumbnailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailsModelToJson(
      this,
    );
  }
}

abstract class _ThumbnailsModel implements ThumbnailsModel {
  factory _ThumbnailsModel({final MediumModel? medium}) = _$_ThumbnailsModel;

  factory _ThumbnailsModel.fromJson(Map<String, dynamic> json) =
      _$_ThumbnailsModel.fromJson;

  @override
  MediumModel? get medium;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbnailsModelCopyWith<_$_ThumbnailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MediumModel _$MediumModelFromJson(Map<String, dynamic> json) {
  return _MediumModel.fromJson(json);
}

/// @nodoc
mixin _$MediumModel {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediumModelCopyWith<MediumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumModelCopyWith<$Res> {
  factory $MediumModelCopyWith(
          MediumModel value, $Res Function(MediumModel) then) =
      _$MediumModelCopyWithImpl<$Res>;
  $Res call({String? url});
}

/// @nodoc
class _$MediumModelCopyWithImpl<$Res> implements $MediumModelCopyWith<$Res> {
  _$MediumModelCopyWithImpl(this._value, this._then);

  final MediumModel _value;
  // ignore: unused_field
  final $Res Function(MediumModel) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MediumModelCopyWith<$Res>
    implements $MediumModelCopyWith<$Res> {
  factory _$$_MediumModelCopyWith(
          _$_MediumModel value, $Res Function(_$_MediumModel) then) =
      __$$_MediumModelCopyWithImpl<$Res>;
  @override
  $Res call({String? url});
}

/// @nodoc
class __$$_MediumModelCopyWithImpl<$Res> extends _$MediumModelCopyWithImpl<$Res>
    implements _$$_MediumModelCopyWith<$Res> {
  __$$_MediumModelCopyWithImpl(
      _$_MediumModel _value, $Res Function(_$_MediumModel) _then)
      : super(_value, (v) => _then(v as _$_MediumModel));

  @override
  _$_MediumModel get _value => super._value as _$_MediumModel;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_MediumModel(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediumModel implements _MediumModel {
  _$_MediumModel({this.url});

  factory _$_MediumModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediumModelFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'MediumModel(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediumModel &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_MediumModelCopyWith<_$_MediumModel> get copyWith =>
      __$$_MediumModelCopyWithImpl<_$_MediumModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediumModelToJson(
      this,
    );
  }
}

abstract class _MediumModel implements MediumModel {
  factory _MediumModel({final String? url}) = _$_MediumModel;

  factory _MediumModel.fromJson(Map<String, dynamic> json) =
      _$_MediumModel.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_MediumModelCopyWith<_$_MediumModel> get copyWith =>
      throw _privateConstructorUsedError;
}
