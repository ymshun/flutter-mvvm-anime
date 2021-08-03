import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_animes.freezed.dart';
part 'search_result_animes.g.dart';

@freezed
abstract class SearchResultAnimes with _$SearchResultAnimes {

  factory SearchResultAnimes({
    @JsonKey(name: 'request_hash') @Default('') String? hash,
    @JsonKey(name: 'request_cached') @Default(false) bool? isCached,
    @JsonKey(name: 'results') @Default(<Anime>[]) List<Anime>? searchResultAnimeList,
    @JsonKey(name: 'last_page') @Default(0) int? lastPage,
}) = _SearchResultAnimes;

  factory SearchResultAnimes.fromJson(Map<String, dynamic> json) => _$SearchResultAnimesFromJson(json);
}
