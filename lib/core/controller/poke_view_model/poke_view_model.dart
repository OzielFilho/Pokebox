import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

import '../../models/pokemon/Pokemon.dart';

part 'poke_view_model.g.dart';

class PokeViewModel = _PokeViewModelBase with _$PokeViewModel;

abstract class _PokeViewModelBase with Store {
  _PokeViewModelBase() {
    respoAPI();
  }

  @observable
  var listPokemon = [];

  @observable
  var listObjPokemon = <Pokemon>[].asObservable();

  @observable
  String url = 'https://pokeapi.co/api/v2/pokemon/';

  @observable
  Map<String, dynamic> retorno = {};

  @observable
  Map<String, dynamic> retornoForm = {};

  @observable
  Map<String, dynamic> retornoGolpes = {};

  @observable
  List<List<String>> golpesList = [];

  @action
  Future<void> respoAPI() async {
    http.Response response = await http.get(url);
    retorno = json.decode(response.body);
    listPokemon = retorno['results'];
    int j;
    for (j = 0; j < listPokemon.length; j++) {
      String url2 = 'https://pokeapi.co/api/v2/pokemon-form/${j + 1}';
      String urlGolpes = 'https://pokeapi.co/api/v2/pokemon/${j + 1}';
      response = await http.get(url2);
      retornoForm = json.decode(response.body);
      http.Response golpes = await http.get(urlGolpes);
      retornoGolpes = json.decode(golpes.body);
      List<String> gol = [];
      gol.add(retornoGolpes['moves'][0]['move']['name']);
      gol.add(retornoGolpes['moves'][1]['move']['name']);
      gol.add(retornoGolpes['moves'][2]['move']['name']);
      gol.add(retornoGolpes['moves'][3]['move']['name']);
      golpesList.add(gol);
      listObjPokemon.add(
        Pokemon(
          name: listPokemon[j]['name'],
          urlImage: retornoForm['sprites']['front_default'],
          golpes: golpesList[j],
        ),
      );
    }

    for (int i = 0; i < j; i++) {}
    print(golpesList[0]);
    // print(listObjPokemon[0].name);

    // print(listPokemon[0]['url']);
  }

  // @action
  // Future<void> urlImageResponse() {
  //   for (int i = 1; i <= listObjPokemon.length; i++) {
  //     listObjPokemon[i].urlImage;
  //   }
  // }
}
