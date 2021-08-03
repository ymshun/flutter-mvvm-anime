// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_animes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultAnimes _$_$_SearchResultAnimesFromJson(
    Map<String, dynamic> json) {
  return _$_SearchResultAnimes(
    hash: json['request_hash'] as String?,
    isCached: json['request_cached'] as bool?,
    searchResultAnimeList: (json['results'] as List<dynamic>?)
        ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
        .toList(),
    lastPage: json['last_page'] as int?,
  );
}

Map<String, dynamic> _$_$_SearchResultAnimesToJson(
        _$_SearchResultAnimes instance) =>
    <String, dynamic>{
      'request_hash': instance.hash,
      'request_cached': instance.isCached,
      'results': instance.searchResultAnimeList,
      'last_page': instance.lastPage,
    };
