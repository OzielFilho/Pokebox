import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../core/controller/poke_view_model/poke_view_model.dart';
import '../../../../utils/widgets/drawer/drawer_pers.dart';
import '../../../../utils/widgets/poke_widget/poke_widget.dart';
import '../golpe/golpe_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _pokeViewModel = GetIt.I.get<PokeViewModel>();
  final _searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
        searchBar: true,
        searchController: _searchController,
        searchBarColorTheme: Theme.of(context).primaryColor,
      ),
      drawer: DrawerPers(),
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
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).accentColor,
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
              itemCount: _pokeViewModel.listObj.length,
              itemBuilder: (context, index) {
                return _pokeViewModel.listObj != null
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/golpe',
                            arguments: GolpeScreen(
                              namePokemon:
                                  _pokeViewModel.listObj[index].name,
                              urlImagePokemon:
                                  _pokeViewModel.listObj[index].urlImage,
                              listGolpes:
                                  _pokeViewModel.listObj[index].golpes,
                              typePokemon: _pokeViewModel
                                  .listObj[index].typePokemon,
                            ),
                          );
                          print(
                            'pokemon ${_pokeViewModel.listObj[index].name}',
                          );
                        },
                        child: PokeWidget(
                          name: _pokeViewModel.listObj[index].name,
                          urlImage:
                              _pokeViewModel.listObj[index].urlImage,
                          color: Theme.of(context).backgroundColor,
                          typePokemon:
                              _pokeViewModel.listObj[index].typePokemon,
                          altura: _pokeViewModel.listObj[index].altura.toInt(),
                          peso: _pokeViewModel.listObj[index].peso
                        ),
                      )
                    : CircularProgressIndicator();
              },
            );
          }),
        ],
      ),
    );
  }
}
