import 'dart:async';

import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:anime_api/infra/model/result/result.dart';
import 'package:anime_api/infra/repository/anime_repository.dart';
import 'package:anime_api/infra/repository/anime_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) => HomeViewModel(ref.read));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._reader);

  final Reader _reader;

  late final AnimeRepository _animeRepository = _reader(animeRepositoryProvider);

  Result<List<Anime>>? _animeList;

  Result<List<Anime>>? get animeList => _animeList;

  int _nextPage = 1;  // pagination

  bool isLoadingNextPage = false;

  void changeLoadingState() {
    isLoadingNextPage = !isLoadingNextPage;
    notifyListeners();
  }

  Future<void> fetchTopRatingAnime() {
    if (isLoadingNextPage) return Future.value(null);
    // initialize pagination and list data
    _nextPage = 1;
    _animeList = null;
    changeLoadingState();
    return _animeRepository.getTopRatingAnime(_nextPage.toString()).then((value) {
      if (value.isSuccess) _nextPage++;
      _animeList = value;
    }).whenComplete(() => changeLoadingState());
  }

  Future<void> fetchTopRatingAnimeNextPage() {
    if (isLoadingNextPage) return Future.value(null);
    changeLoadingState();
    return _animeRepository.getTopRatingAnime(_nextPage.toString()).then((value) {
      if (value.isSuccess) {
        _nextPage++;
        _animeList == null ? _animeList = value : _animeList!.dataOrThrow.addAll(value.dataOrThrow);
      } else {
        _animeList = value;
      }
    }).whenComplete(() => changeLoadingState());
  }

  Future<void> searchAnime(String query) {
    if (isLoadingNextPage) return Future.value(null);
    // initialize pagination and list data
    _nextPage = 1;
    _animeList = null;
    changeLoadingState();
    return _animeRepository.searchAnime(query, _nextPage.toString()).then((value) {
      if (value.isSuccess) {
        _nextPage++;
        _animeList == null ? _animeList = value : _animeList!.dataOrThrow.addAll(value.dataOrThrow);
      } else {
        _animeList = value;
      }
    }).whenComplete(() => changeLoadingState());
  }

  Future<void> searchAnimeNextPage(String query) {
    if (isLoadingNextPage) return Future.value(null);
    changeLoadingState();
    return _animeRepository.searchAnime(query, _nextPage.toString()).then((value) {
      if (value.isSuccess) {
        _nextPage++;
        _animeList == null ? _animeList = value : _animeList!.dataOrThrow.addAll(value.dataOrThrow);
      } else {
        _animeList = value;
      }
    }).whenComplete(() => changeLoadingState());
  }
}
