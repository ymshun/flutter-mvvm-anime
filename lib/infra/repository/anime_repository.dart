import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:anime_api/infra/model/result/result.dart';

abstract class AnimeRepository {
  Future<Result<List<Anime>>> getTopRatingAnime(String page);

  Future<Result<List<Anime>>> searchAnime(String query, String page);
}
