import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:anime_api/infra/model/result/result.dart';
import 'package:anime_api/infra/remote/anime/anime_data_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'anime_repository.dart';

final animeRepositoryProvider = Provider<AnimeRepository>((ref) => AnimeRepositoryImpl(ref.read));

class AnimeRepositoryImpl implements AnimeRepository {
  AnimeRepositoryImpl(this._reader);

  final Reader _reader;

  late final AnimeDataSource _animeDataSource = _reader(animeDataSourceProvider);

  @override
  Future<Result<List<Anime>>> getTopRatingAnime(String page) {
    debugPrint('top rating anime api called. page: $page');
    return Result.guardFuture(() async {
      final result = await _animeDataSource.getTopRatingAnime(page: page);
      return result.topRatingAnimeList;
    });
  }

  @override
  Future<Result<List<Anime>>> searchAnime(String query, String page) {
    debugPrint('anime search api called. query: $query, page: $page');
    return Result.guardFuture(() async {
      final result = await _animeDataSource.searchAnime(searchQuery: query, page: page);
      return result.searchResultAnimeList ?? [];
    });
  }
}
