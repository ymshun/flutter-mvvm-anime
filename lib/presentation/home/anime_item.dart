import 'package:anime_api/infra/model/anime/anime.dart';
import 'package:anime_api/presentation/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:transparent_image/transparent_image.dart';

class AnimeItem extends HookWidget {
  AnimeItem(this._viewModel, this._onTap, this._index, this._anime);

  final HomeViewModel _viewModel;
  final void Function(Anime) _onTap;
  final int _index;
  final Anime _anime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          width: double.infinity,
          child: Card(
            child: InkWell(
              onTap: () => _onTap(_anime),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  children: [
                    FadeInImage.memoryNetwork(
                      width: 100,
                      placeholder: kTransparentImage,
                      image: _anime.imageUrl ?? '',
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text(
                              _anime.title ?? '',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 25),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'episodes: ${_anime.episodes?.toString() ?? ''}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'start date: ${_anime.startDate ?? ''}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'score: ${_anime.score ?? ''}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        if (_viewModel.isLoadingNextPage && _viewModel.animeList!.dataOrThrow.length == _index + 1)
          Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()))
      ],
    );
  }
}
