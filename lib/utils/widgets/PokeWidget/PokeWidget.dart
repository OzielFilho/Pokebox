import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pokebox/core/helpers/assetsHelper/AssetsHelper.dart';
import 'package:pokebox/core/models/pokemon/Pokemon.dart';

import 'package:pokebox/core/viewModel/poke_view_model/poke_view_model.dart';

class PokeWidget extends StatefulWidget {
  PokeWidget({
    this.name,
    this.urlImage,
  });

  final String name;
  final String urlImage;

  @override
  _PokeWidgetState createState() => _PokeWidgetState();
}

class _PokeWidgetState extends State<PokeWidget> {
  @override
  Widget build(BuildContext context) {
    return GFCard(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(
        top: 10.0,
        left: 2.0,
        right: 2.0,
      ),
      elevation: 50.0,
      titlePosition: GFPosition.start,
      image: widget.urlImage != null
          ? CachedNetworkImage(
              imageUrl: widget.urlImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(
                value: downloadProgress.progress,
              ),
              errorWidget: (context, url, error) =>
                  Icon(FlutterIcons.error_outline_mdi),
            )
          : Image.asset(
              AssetsHelper.pokemonImage,
              scale: 0.1,
            ),
      title: GFListTile(
        padding: EdgeInsets.zero,
        title: widget.name != null
            ? Center(
                child: Text(
                  widget.name,
                  style: Theme.of(context).textTheme.button,
                ),
              )
            : Center(
                child: Text(
                  'Pokemon',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
      ),
    );
  }
}
