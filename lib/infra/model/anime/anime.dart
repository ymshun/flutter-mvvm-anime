import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

@freezed
abstract class Anime with _$Anime {

  factory Anime({
    @JsonKey(name: 'mal_id') @Default(0) int? id,
    @Default('') String? title,
    @Default('') String? url,
    @JsonKey(name: 'image_url') @Default('') String? imageUrl,
    @Default(0) int? episodes,
    @Default(0.0) double? score,
    @JsonKey(name: 'start_date') @Default('') String? startDate,
}) = _Anime;

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
}
