// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rating_animes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopRatingAnimes _$_$_TopRatingAnimesFromJson(Map<String, dynamic> json) {
  return _$_TopRatingAnimes(
    hash: json['request_hash'] as String,
    isCached: json['request_cached'] as bool,
    topRatingAnimeList: (json['top'] as List<dynamic>)
        .map((e) => Anime.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TopRatingAnimesToJson(_$_TopRatingAnimes instance) =>
    <String, dynamic>{
      'request_hash': instance.hash,
      'request_cached': instance.isCached,
      'top': instance.topRatingAnimeList,
    };
