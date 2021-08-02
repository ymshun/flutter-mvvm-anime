import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:anime_api/infra/model/search_result_animes/search_result_animes.dart';
import 'package:anime_api/infra/model/top_rating_animes/top_rating_animes.dart';
import 'package:anime_api/infra/remote/app_dio.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'anime_data_source.g.dart';

final animeDataSourceProvider = Provider((ref) => AnimeDataSource(ref.read));

@RestApi()
abstract class AnimeDataSource {
  factory AnimeDataSource(Reader reader) => _AnimeDataSource(reader(dioProvider));

  @GET('/v3/top/anime/{page}/tv')
  Future<TopRatingAnimes> getTopRatingAnime({
    @Path('page') required String page,
  });

  @GET('/v3/search')
  Future<SearchResultAnimes> searchAnime({
    @Query('anime') required String searchQuery,
    @Query('page') required String page,
  });
}
