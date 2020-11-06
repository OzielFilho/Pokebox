import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:pokebox/core/models/pokemon/Pokemon.dart';
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

  @action
  Future<void> respoAPI() async {
    http.Response response = await http.get(url);
    retorno = json.decode(response.body);
    listPokemon = retorno['results'];
    for (int j = 0; j < listPokemon.length; j++) {
      String url2 = 'https://pokeapi.co/api/v2/pokemon-form/${j + 1}';
      response = await http.get(url2);
      retornoForm = json.decode(response.body);
      print(retornoForm.length);
      listObjPokemon.add(
        Pokemon(
          name: listPokemon[j]['name'],
          urlImage: retornoForm['sprites']['front_default'],
        ),
      );
    }
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
