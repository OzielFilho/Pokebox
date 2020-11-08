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

  @observable
  List typePokemon = [];

  @action
  Future<void> respoAPI() async {
    http.Response response = await http.get(url);
    retorno = json.decode(response.body);
    listPokemon = retorno['results'];
    int j;

    for (j = 0; j < listPokemon.length; j++) {
      // Url para recuperar a imagem e os golpes do pokemon especificado pelo j
      String urlForms = 'https://pokeapi.co/api/v2/pokemon-form/${j + 1}';
      String urlGolpes = 'https://pokeapi.co/api/v2/pokemon/${j + 1}';

      // resposta da api juntamente com um map para armazenar o corpo do retorno
      response = await http.get(urlForms);
      retornoForm = json.decode(response.body);

      // resposta da api juntamente com um map para armazenar o corpo do retorno
      http.Response golpes = await http.get(urlGolpes);
      retornoGolpes = json.decode(golpes.body);

      List<String> golpesRetorno = [];
      // adição do nome dos golpes de cada j(pokemon) a uma lista de strings
      golpesRetorno.add(retornoGolpes['moves'][0]['move']['name']);
      golpesRetorno.add(retornoGolpes['moves'][1]['move']['name']);
      golpesRetorno.add(retornoGolpes['moves'][2]['move']['name']);
      golpesRetorno.add(retornoGolpes['moves'][3]['move']['name']);
      // adição dessa lista de golpes a uma lista para acessar os pokemons pelo
      // seu indice (j)
      golpesList.add(golpesRetorno);
      // adicao na lista de objetos Pokemon contendo todas as informaçoes do meu
      // pokemon

      typePokemon.add(retornoGolpes['types']);
      listObjPokemon.add(
        Pokemon(
          name: listPokemon[j]['name'],
          urlImage: retornoForm['sprites']['front_default'],
          golpes: golpesList[j],
          typePokemon: typePokemon[j],
        ),
      );
    }
    
  }
}
