import 'package:anime_api/presentation/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'anime_item.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _viewModel = useProvider(homeViewModelProvider);
    final _scrollController = ScrollController();

    _scrollController.addListener(() {
      final scrollValue = _scrollController.offset / _scrollController.position.maxScrollExtent;
      if (scrollValue == 1.0) {
        _viewModel.fetchTopRatingAnime();
      }
    });

    useEffect(() {
      _viewModel.fetchTopRatingAnime();
      return _viewModel.dispose;
    }, const []);

    return Scaffold(
      body: _viewModel.animeList == null
          ? Center(child: CircularProgressIndicator())
          : _viewModel.animeList!.when(
              success: (data) {
                return Scrollbar(
                  child: ListView.builder(
                    itemCount: data.length,
                    controller: _scrollController,
                    itemBuilder: (context, i) {
                      return AnimeItem(_viewModel, (anime) {}, i, data[i]);
                    },
                  ),
                );
              },
              failure: (e) {
                return Center(
                  child: Text('failed to request anime api'),
                );
              },
            ),
      // : Center(child: Text('test')),
    );
  }
}
