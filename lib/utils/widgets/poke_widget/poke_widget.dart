import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import '../../../core/helpers/assetsHelper/assets_helper.dart';

import '../../textFormat/StringFormated.dart';

class PokeWidget extends StatefulWidget {
  PokeWidget({
    this.name,
    this.urlImage,
    this.color,
    this.typePokemon,
  });

  final String name;
  final List<String> urlImage;
  final Color color;
  final List typePokemon;

  @override
  _PokeWidgetState createState() => _PokeWidgetState();
}

class _PokeWidgetState extends State<PokeWidget> {
  @override
  Widget build(BuildContext context) {
    return GFCard(
      color:
          widget.color != null ? widget.color : Theme.of(context).primaryColor,
      padding: EdgeInsets.only(
        top: 10.0,
        left: 2.0,
        right: 2.0,
      ),
      elevation: 50.0,
      titlePosition: GFPosition.start,
      image: widget.urlImage != null
          ? Image.network(
              widget.urlImage[0],
              scale: 0.1,
              height: 130,
              width: 150,
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
                  StringFormated().stringFormated(widget.name),
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
