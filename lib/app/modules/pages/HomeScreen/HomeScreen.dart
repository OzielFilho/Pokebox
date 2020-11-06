import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pokebox/core/viewModel/poke_view_model/poke_view_model.dart';
import 'package:pokebox/utils/theme/Theme.dart';
import 'package:pokebox/utils/widgets/Draw/Draw.dart';
import 'package:pokebox/utils/widgets/PokeWidget/PokeWidget.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen_page';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _pokeViewModel = GetIt.I.get<PokeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
        searchBar: true,
        searchBarColorTheme: Theme.of(context).primaryColor,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      drawer: Draw(),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Pokemons',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Observer(builder: (_) {
            return GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.5,
                mainAxisSpacing: 0.5,
                childAspectRatio: 0.7,
              ),
              itemCount: _pokeViewModel.listObjPokemon.length,
              itemBuilder: (context, index) {
                // print(_pokeViewModel.listPokemon[index].name);
                return _pokeViewModel.listObjPokemon != null
                    ? PokeWidget(
                        name: _pokeViewModel.listObjPokemon[index].name,
                        urlImage: _pokeViewModel.listObjPokemon[index].urlImage)
                    : CircularProgressIndicator();
              },
            );
          }),
        ],
      ),
    );
  }
}
