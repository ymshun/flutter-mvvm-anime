// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_result_animes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultAnimes _$SearchResultAnimesFromJson(Map<String, dynamic> json) {
  return _SearchResultAnimes.fromJson(json);
}

/// @nodoc
class _$SearchResultAnimesTearOff {
  const _$SearchResultAnimesTearOff();

  _SearchResultAnimes call(
      {@JsonKey(name: 'request_hash')
          String? hash = '',
      @JsonKey(name: 'request_cached')
          bool? isCached = false,
      @JsonKey(name: 'results')
          List<Anime>? searchResultAnimeList = const <Anime>[],
      @JsonKey(name: 'last_page')
          int? lastPage = 0}) {
    return _SearchResultAnimes(
      hash: hash,
      isCached: isCached,
      searchResultAnimeList: searchResultAnimeList,
      lastPage: lastPage,
    );
  }

  SearchResultAnimes fromJson(Map<String, Object> json) {
    return SearchResultAnimes.fromJson(json);
  }
}

/// @nodoc
const $SearchResultAnimes = _$SearchResultAnimesTearOff();

/// @nodoc
mixin _$SearchResultAnimes {
  @JsonKey(name: 'request_hash')
  String? get hash => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_cached')
  bool? get isCached => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Anime>? get searchResultAnimeList => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultAnimesCopyWith<SearchResultAnimes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultAnimesCopyWith<$Res> {
  factory $SearchResultAnimesCopyWith(
          SearchResultAnimes value, $Res Function(SearchResultAnimes) then) =
      _$SearchResultAnimesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'request_hash') String? hash,
      @JsonKey(name: 'request_cached') bool? isCached,
      @JsonKey(name: 'results') List<Anime>? searchResultAnimeList,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class _$SearchResultAnimesCopyWithImpl<$Res>
    implements $SearchResultAnimesCopyWith<$Res> {
  _$SearchResultAnimesCopyWithImpl(this._value, this._then);

  final SearchResultAnimes _value;
  // ignore: unused_field
  final $Res Function(SearchResultAnimes) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? isCached = freezed,
    Object? searchResultAnimeList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      isCached: isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResultAnimeList: searchResultAnimeList == freezed
          ? _value.searchResultAnimeList
          : searchResultAnimeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SearchResultAnimesCopyWith<$Res>
    implements $SearchResultAnimesCopyWith<$Res> {
  factory _$SearchResultAnimesCopyWith(
          _SearchResultAnimes value, $Res Function(_SearchResultAnimes) then) =
      __$SearchResultAnimesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'request_hash') String? hash,
      @JsonKey(name: 'request_cached') bool? isCached,
      @JsonKey(name: 'results') List<Anime>? searchResultAnimeList,
      @JsonKey(name: 'last_page') int? lastPage});
}

/// @nodoc
class __$SearchResultAnimesCopyWithImpl<$Res>
    extends _$SearchResultAnimesCopyWithImpl<$Res>
    implements _$SearchResultAnimesCopyWith<$Res> {
  __$SearchResultAnimesCopyWithImpl(
      _SearchResultAnimes _value, $Res Function(_SearchResultAnimes) _then)
      : super(_value, (v) => _then(v as _SearchResultAnimes));

  @override
  _SearchResultAnimes get _value => super._value as _SearchResultAnimes;

  @override
  $Res call({
    Object? hash = freezed,
    Object? isCached = freezed,
    Object? searchResultAnimeList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_SearchResultAnimes(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      isCached: isCached == freezed
          ? _value.isCached
          : isCached // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchResultAnimeList: searchResultAnimeList == freezed
          ? _value.searchResultAnimeList
          : searchResultAnimeList // ignore: cast_nullable_to_non_nullable
              as List<Anime>?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultAnimes implements _SearchResultAnimes {
  _$_SearchResultAnimes(
      {@JsonKey(name: 'request_hash') this.hash = '',
      @JsonKey(name: 'request_cached') this.isCached = false,
      @JsonKey(name: 'results') this.searchResultAnimeList = const <Anime>[],
      @JsonKey(name: 'last_page') this.lastPage = 0});

  factory _$_SearchResultAnimes.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchResultAnimesFromJson(json);

  @override
  @JsonKey(name: 'request_hash')
  final String? hash;
  @override
  @JsonKey(name: 'request_cached')
  final bool? isCached;
  @override
  @JsonKey(name: 'results')
  final List<Anime>? searchResultAnimeList;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;

  @override
  String toString() {
    return 'SearchResultAnimes(hash: $hash, isCached: $isCached, searchResultAnimeList: $searchResultAnimeList, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultAnimes &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.isCached, isCached) ||
                const DeepCollectionEquality()
                    .equals(other.isCached, isCached)) &&
            (identical(other.searchResultAnimeList, searchResultAnimeList) ||
                const DeepCollectionEquality().equals(
                    other.searchResultAnimeList, searchResultAnimeList)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(isCached) ^
      const DeepCollectionEquality().hash(searchResultAnimeList) ^
      const DeepCollectionEquality().hash(lastPage);

  @JsonKey(ignore: true)
  @override
  _$SearchResultAnimesCopyWith<_SearchResultAnimes> get copyWith =>
      __$SearchResultAnimesCopyWithImpl<_SearchResultAnimes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchResultAnimesToJson(this);
  }
}

abstract class _SearchResultAnimes implements SearchResultAnimes {
  factory _SearchResultAnimes(
      {@JsonKey(name: 'request_hash') String? hash,
      @JsonKey(name: 'request_cached') bool? isCached,
      @JsonKey(name: 'results') List<Anime>? searchResultAnimeList,
      @JsonKey(name: 'last_page') int? lastPage}) = _$_SearchResultAnimes;

  factory _SearchResultAnimes.fromJson(Map<String, dynamic> json) =
      _$_SearchResultAnimes.fromJson;

  @override
  @JsonKey(name: 'request_hash')
  String? get hash => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_cached')
  bool? get isCached => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<Anime>? get searchResultAnimeList => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResultAnimesCopyWith<_SearchResultAnimes> get copyWith =>
      throw _privateConstructorUsedError;
}
