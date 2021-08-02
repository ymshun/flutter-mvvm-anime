// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return _Anime.fromJson(json);
}

/// @nodoc
class _$AnimeTearOff {
  const _$AnimeTearOff();

  _Anime call(
      {@JsonKey(name: 'mal_id') int? id = 0,
      String? title = '',
      String? url = '',
      @JsonKey(name: 'image_url') String? imageUrl = '',
      int? episodes = 0,
      double? score = 0.0,
      @JsonKey(name: 'start_date') String? startDate = ''}) {
    return _Anime(
      id: id,
      title: title,
      url: url,
      imageUrl: imageUrl,
      episodes: episodes,
      score: score,
      startDate: startDate,
    );
  }

  Anime fromJson(Map<String, Object> json) {
    return Anime.fromJson(json);
  }
}

/// @nodoc
const $Anime = _$AnimeTearOff();

/// @nodoc
mixin _$Anime {
  @JsonKey(name: 'mal_id')
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get episodes => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'mal_id') int? id,
      String? title,
      String? url,
      @JsonKey(name: 'image_url') String? imageUrl,
      int? episodes,
      double? score,
      @JsonKey(name: 'start_date') String? startDate});
}

/// @nodoc
class _$AnimeCopyWithImpl<$Res> implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  final Anime _value;
  // ignore: unused_field
  final $Res Function(Anime) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? episodes = freezed,
    Object? score = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$AnimeCopyWith(_Anime value, $Res Function(_Anime) then) =
      __$AnimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'mal_id') int? id,
      String? title,
      String? url,
      @JsonKey(name: 'image_url') String? imageUrl,
      int? episodes,
      double? score,
      @JsonKey(name: 'start_date') String? startDate});
}

/// @nodoc
class __$AnimeCopyWithImpl<$Res> extends _$AnimeCopyWithImpl<$Res>
    implements _$AnimeCopyWith<$Res> {
  __$AnimeCopyWithImpl(_Anime _value, $Res Function(_Anime) _then)
      : super(_value, (v) => _then(v as _Anime));

  @override
  _Anime get _value => super._value as _Anime;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? episodes = freezed,
    Object? score = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_Anime(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as int?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Anime implements _Anime {
  _$_Anime(
      {@JsonKey(name: 'mal_id') this.id = 0,
      this.title = '',
      this.url = '',
      @JsonKey(name: 'image_url') this.imageUrl = '',
      this.episodes = 0,
      this.score = 0.0,
      @JsonKey(name: 'start_date') this.startDate = ''});

  factory _$_Anime.fromJson(Map<String, dynamic> json) =>
      _$_$_AnimeFromJson(json);

  @override
  @JsonKey(name: 'mal_id')
  final int? id;
  @JsonKey(defaultValue: '')
  @override
  final String? title;
  @JsonKey(defaultValue: '')
  @override
  final String? url;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(defaultValue: 0)
  @override
  final int? episodes;
  @JsonKey(defaultValue: 0.0)
  @override
  final double? score;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;

  @override
  String toString() {
    return 'Anime(id: $id, title: $title, url: $url, imageUrl: $imageUrl, episodes: $episodes, score: $score, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Anime &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(episodes) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(startDate);

  @JsonKey(ignore: true)
  @override
  _$AnimeCopyWith<_Anime> get copyWith =>
      __$AnimeCopyWithImpl<_Anime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnimeToJson(this);
  }
}

abstract class _Anime implements Anime {
  factory _Anime(
      {@JsonKey(name: 'mal_id') int? id,
      String? title,
      String? url,
      @JsonKey(name: 'image_url') String? imageUrl,
      int? episodes,
      double? score,
      @JsonKey(name: 'start_date') String? startDate}) = _$_Anime;

  factory _Anime.fromJson(Map<String, dynamic> json) = _$_Anime.fromJson;

  @override
  @JsonKey(name: 'mal_id')
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  int? get episodes => throw _privateConstructorUsedError;
  @override
  double? get score => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnimeCopyWith<_Anime> get copyWith => throw _privateConstructorUsedError;
}
