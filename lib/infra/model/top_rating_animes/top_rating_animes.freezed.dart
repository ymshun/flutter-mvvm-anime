// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'top_rating_animes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopRatingAnimes _$TopRatingAnimesFromJson(Map<String, dynamic> json) {
  return _TopRatingAnimes.fromJson(json);
}

/// @nodoc
class _$TopRatingAnimesTearOff {
  const _$TopRatingAnimesTearOff();

  _TopRatingAnimes call(
      {@JsonKey(name: 'request_hash') String hash = '',
      @JsonKey(name: 'request_cached') bool isCached = false,
      @JsonKey(name: 'top') List<Anime> topRatingAnimeList = const <Anime>[]}) {
    return _TopRatingAnimes(
      hash: hash,
      isCached: isCached,
      topRatingAnimeList: topRatingAnimeList,
    );
  }

  TopRatingAnimes fromJson(Map<String, Object> json) {
    return TopRatingAnimes.fromJson(json);
  }
}

/// @nodoc
const $TopRatingAnimes = _$TopRatingAnimesTearOff();

/// @nodoc
mixin _$TopRatingAnimes {
  @JsonKey(name: 'request_hash')
  String get hash => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_cached')
  bool get isCached => throw _privateConstructorUsedError;
  @JsonKey(name: 'top')
  List<Anime> get topRatingAnimeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopRatingAnimesCopyWith<TopRatingAnimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatingAnimesCopyWith<$Res> {
  factory $TopRatingAnimesCopyWith(
          TopRatingAnimes value, $Res Function(TopRatingAnimes) then) =
      _$TopRatingAnimesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'request_hash') String hash,
      @JsonKey(name: 'request_cached') bool isCached,
      @JsonKey(name: 'top') List<Anime> topRatingAnimeList});
}

/// @nodoc
class _$TopRatingAnimesCopyWithImpl<$Res>
    implements $TopRatingAnimesCopyWith<$Res> {
  _$TopRatingAnimesCopyWithImpl(this._value, this._then);

  final TopRatingAnimes _value;
  // ignore: unused_field
  final $Res Function(TopRatingAnimes) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? isCached = freezed,
    Object? topRatingAnimeList = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      isCached: isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool,
      topRatingAnimeList: topRatingAnimeList == freezed
          ? _value.topRatingAnimeList
          : topRatingAnimeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ));
  }
}

/// @nodoc
abstract class _$TopRatingAnimesCopyWith<$Res>
    implements $TopRatingAnimesCopyWith<$Res> {
  factory _$TopRatingAnimesCopyWith(
          _TopRatingAnimes value, $Res Function(_TopRatingAnimes) then) =
      __$TopRatingAnimesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'request_hash') String hash,
      @JsonKey(name: 'request_cached') bool isCached,
      @JsonKey(name: 'top') List<Anime> topRatingAnimeList});
}

/// @nodoc
class __$TopRatingAnimesCopyWithImpl<$Res>
    extends _$TopRatingAnimesCopyWithImpl<$Res>
    implements _$TopRatingAnimesCopyWith<$Res> {
  __$TopRatingAnimesCopyWithImpl(
      _TopRatingAnimes _value, $Res Function(_TopRatingAnimes) _then)
      : super(_value, (v) => _then(v as _TopRatingAnimes));

  @override
  _TopRatingAnimes get _value => super._value as _TopRatingAnimes;

  @override
  $Res call({
    Object? hash = freezed,
    Object? isCached = freezed,
    Object? topRatingAnimeList = freezed,
  }) {
    return _then(_TopRatingAnimes(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      isCached: isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool,
      topRatingAnimeList: topRatingAnimeList == freezed
          ? _value.topRatingAnimeList
          : topRatingAnimeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopRatingAnimes implements _TopRatingAnimes {
  _$_TopRatingAnimes(
      {@JsonKey(name: 'request_hash') this.hash = '',
      @JsonKey(name: 'request_cached') this.isCached = false,
      @JsonKey(name: 'top') this.topRatingAnimeList = const <Anime>[]});

  factory _$_TopRatingAnimes.fromJson(Map<String, dynamic> json) =>
      _$_$_TopRatingAnimesFromJson(json);

  @override
  @JsonKey(name: 'request_hash')
  final String hash;
  @override
  @JsonKey(name: 'request_cached')
  final bool isCached;
  @override
  @JsonKey(name: 'top')
  final List<Anime> topRatingAnimeList;

  @override
  String toString() {
    return 'TopRatingAnimes(hash: $hash, isCached: $isCached, topRatingAnimeList: $topRatingAnimeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopRatingAnimes &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.isCached, isCached) ||
                const DeepCollectionEquality()
                    .equals(other.isCached, isCached)) &&
            (identical(other.topRatingAnimeList, topRatingAnimeList) ||
                const DeepCollectionEquality()
                    .equals(other.topRatingAnimeList, topRatingAnimeList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(isCached) ^
      const DeepCollectionEquality().hash(topRatingAnimeList);

  @JsonKey(ignore: true)
  @override
  _$TopRatingAnimesCopyWith<_TopRatingAnimes> get copyWith =>
      __$TopRatingAnimesCopyWithImpl<_TopRatingAnimes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TopRatingAnimesToJson(this);
  }
}

abstract class _TopRatingAnimes implements TopRatingAnimes {
  factory _TopRatingAnimes(
          {@JsonKey(name: 'request_hash') String hash,
          @JsonKey(name: 'request_cached') bool isCached,
          @JsonKey(name: 'top') List<Anime> topRatingAnimeList}) =
      _$_TopRatingAnimes;

  factory _TopRatingAnimes.fromJson(Map<String, dynamic> json) =
      _$_TopRatingAnimes.fromJson;

  @override
  @JsonKey(name: 'request_hash')
  String get hash => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_cached')
  bool get isCached => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'top')
  List<Anime> get topRatingAnimeList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopRatingAnimesCopyWith<_TopRatingAnimes> get copyWith =>
      throw _privateConstructorUsedError;
}
