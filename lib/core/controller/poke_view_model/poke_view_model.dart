import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../models/pokemon/Pokemon.dart';

part 'poke_view_model.g.dart';

class PokeViewModel = _PokeViewModelBase with _$PokeViewModel;

abstract class _PokeViewModelBase with Store {
  _PokeViewModelBase() {
    getJson();
  }
  @observable
  String url = 'https://pokeapi.co/api/v2/pokemon/';

  @observable
  var listObj = <Pokemon>[].asObservable();

  @observable
  Response response;

  @observable
  var dio = new Dio();

  @action
  Future<void> getJson() async {
    int i = 1;
    while (i < 70) {
      response = await dio.get(url + i.toString());
      listObj.add(Pokemon.fromJson(response.data));
      i++;
    }
  }
}
