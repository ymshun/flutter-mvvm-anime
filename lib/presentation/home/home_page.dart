import 'package:anime_api/presentation/home/home_view_model.dart';
import 'package:anime_api/presentation/webview/webview_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'anime_item.dart';

class HomePage extends StatefulHookWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _viewModel = useProvider(homeViewModelProvider);
    final _scrollController = ScrollController();
    final FloatingSearchBarController _floatingSearchBarController = FloatingSearchBarController();
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

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
      body: FloatingSearchBar(
        body: _buildAnimeList(_viewModel, _scrollController),
        onSubmitted: (query) {
          _viewModel.searchAnime(query);
          _floatingSearchBarController.close();
        },
        hint: 'Anime Search...',
        controller: _floatingSearchBarController,
        clearQueryOnClose: false,
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 300),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        axisAlignment: isPortrait ? 0.0 : -1.0,
        openAxisAlignment: 0.0,
        width: isPortrait ? 600 : 500,
        debounceDelay: const Duration(milliseconds: 800),
        transition: SlideFadeFloatingSearchBarTransition(),
        actions: [
          FloatingSearchBarAction.icon(
              icon: Icon(Icons.home),
              onTap: () {
                _floatingSearchBarController.clear();
                setState(() {});
              }),
          FloatingSearchBarAction.searchToClear(showIfClosed: false),
        ],
        builder: (context, transition) {
          return Container();
        },
      ),
    );
  }

  Widget _buildAnimeList(HomeViewModel viewModel, ScrollController scrollController) {
    return viewModel.animeList == null
        ? Center(child: CircularProgressIndicator())
        : viewModel.animeList!.when(
            success: (data) {
              return Scrollbar(
                child: Padding(
                  padding: EdgeInsets.only(top: 56),
                  child: FloatingSearchBarScrollNotifier(
                    child: ListView.builder(
                      itemCount: data.length,
                      controller: scrollController,
                      itemBuilder: (context, i) {
                        return AnimeItem(viewModel, (anime) => _openWebView(anime.url ?? '', context), i, data[i]);
                      },
                    ),
                  ),
                ),
              );
            },
            failure: (e) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('failed to request anime api. \n ${e.toString()}'),
                ),
              );
            },
          );
  }

  void _openWebView(String url, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => WebViewPage(url)));
  }
}
