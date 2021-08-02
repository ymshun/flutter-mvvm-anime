// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Anime _$_$_AnimeFromJson(Map<String, dynamic> json) {
  return _$_Anime(
    id: json['mal_id'] as int?,
    title: json['title'] as String? ?? '',
    url: json['url'] as String? ?? '',
    imageUrl: json['image_url'] as String?,
    episodes: json['episodes'] as int? ?? 0,
    score: (json['score'] as num?)?.toDouble() ?? 0.0,
    startDate: json['start_date'] as String?,
  );
}

Map<String, dynamic> _$_$_AnimeToJson(_$_Anime instance) => <String, dynamic>{
      'mal_id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'episodes': instance.episodes,
      'score': instance.score,
      'start_date': instance.startDate,
    };
