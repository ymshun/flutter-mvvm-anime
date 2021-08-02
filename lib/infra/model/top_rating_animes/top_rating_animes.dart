import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rating_animes.freezed.dart';
part 'top_rating_animes.g.dart';

@freezed
abstract class TopRatingAnimes with _$TopRatingAnimes {

  factory TopRatingAnimes({
    @JsonKey(name: 'request_hash') @Default('') String hash,
    @JsonKey(name: 'request_cached') @Default(false) bool isCached,
    @JsonKey(name: 'top') @Default(<Anime>[]) List<Anime> topRatingAnimeList,
}) = _TopRatingAnimes;

  factory TopRatingAnimes.fromJson(Map<String, dynamic> json) => _$TopRatingAnimesFromJson(json);
}
