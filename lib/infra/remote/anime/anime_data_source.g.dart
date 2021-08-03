// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AnimeDataSource implements AnimeDataSource {
  _AnimeDataSource(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<TopRatingAnimes> getTopRatingAnime({required page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TopRatingAnimes>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/v3/top/anime/$page/tv',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TopRatingAnimes.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SearchResultAnimes> searchAnime(
      {required searchQuery, required page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': searchQuery, r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SearchResultAnimes>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/v3/search/anime',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SearchResultAnimes.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
