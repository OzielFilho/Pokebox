// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeViewModel on _PokeViewModelBase, Store {
  final _$listPokemonAtom = Atom(name: '_PokeViewModelBase.listPokemon');

  @override
  List<dynamic> get listPokemon {
    _$listPokemonAtom.reportRead();
    return super.listPokemon;
  }

  @override
  set listPokemon(List<dynamic> value) {
    _$listPokemonAtom.reportWrite(value, super.listPokemon, () {
      super.listPokemon = value;
    });
  }

  final _$listObjPokemonAtom = Atom(name: '_PokeViewModelBase.listObjPokemon');

  @override
  ObservableList<Pokemon> get listObjPokemon {
    _$listObjPokemonAtom.reportRead();
    return super.listObjPokemon;
  }

  @override
  set listObjPokemon(ObservableList<Pokemon> value) {
    _$listObjPokemonAtom.reportWrite(value, super.listObjPokemon, () {
      super.listObjPokemon = value;
    });
  }

  final _$urlAtom = Atom(name: '_PokeViewModelBase.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  final _$retornoAtom = Atom(name: '_PokeViewModelBase.retorno');

  @override
  Map<String, dynamic> get retorno {
    _$retornoAtom.reportRead();
    return super.retorno;
  }

  @override
  set retorno(Map<String, dynamic> value) {
    _$retornoAtom.reportWrite(value, super.retorno, () {
      super.retorno = value;
    });
  }

  final _$retornoFormAtom = Atom(name: '_PokeViewModelBase.retornoForm');

  @override
  Map<String, dynamic> get retornoForm {
    _$retornoFormAtom.reportRead();
    return super.retornoForm;
  }

  @override
  set retornoForm(Map<String, dynamic> value) {
    _$retornoFormAtom.reportWrite(value, super.retornoForm, () {
      super.retornoForm = value;
    });
  }

  final _$retornoGolpesAtom = Atom(name: '_PokeViewModelBase.retornoGolpes');

  @override
  Map<String, dynamic> get retornoGolpes {
    _$retornoGolpesAtom.reportRead();
    return super.retornoGolpes;
  }

  @override
  set retornoGolpes(Map<String, dynamic> value) {
    _$retornoGolpesAtom.reportWrite(value, super.retornoGolpes, () {
      super.retornoGolpes = value;
    });
  }

  final _$golpesListAtom = Atom(name: '_PokeViewModelBase.golpesList');

  @override
  List<List<String>> get golpesList {
    _$golpesListAtom.reportRead();
    return super.golpesList;
  }

  @override
  set golpesList(List<List<String>> value) {
    _$golpesListAtom.reportWrite(value, super.golpesList, () {
      super.golpesList = value;
    });
  }

  final _$respoAPIAsyncAction = AsyncAction('_PokeViewModelBase.respoAPI');

  @override
  Future<void> respoAPI() {
    return _$respoAPIAsyncAction.run(() => super.respoAPI());
  }

  @override
  String toString() {
    return '''
listPokemon: ${listPokemon},
listObjPokemon: ${listObjPokemon},
url: ${url},
retorno: ${retorno},
retornoForm: ${retornoForm},
retornoGolpes: ${retornoGolpes},
golpesList: ${golpesList}
    ''';
  }
}
