// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeViewModel on _PokeViewModelBase, Store {
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

  final _$listObjAtom = Atom(name: '_PokeViewModelBase.listObj');

  @override
  ObservableList<Pokemon> get listObj {
    _$listObjAtom.reportRead();
    return super.listObj;
  }

  @override
  set listObj(ObservableList<Pokemon> value) {
    _$listObjAtom.reportWrite(value, super.listObj, () {
      super.listObj = value;
    });
  }

  final _$responseAtom = Atom(name: '_PokeViewModelBase.response');

  @override
  Response<dynamic> get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(Response<dynamic> value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$dioAtom = Atom(name: '_PokeViewModelBase.dio');

  @override
  Dio get dio {
    _$dioAtom.reportRead();
    return super.dio;
  }

  @override
  set dio(Dio value) {
    _$dioAtom.reportWrite(value, super.dio, () {
      super.dio = value;
    });
  }

  final _$getJsonAsyncAction = AsyncAction('_PokeViewModelBase.getJson');

  @override
  Future<void> getJson() {
    return _$getJsonAsyncAction.run(() => super.getJson());
  }

  @override
  String toString() {
    return '''
url: ${url},
listObj: ${listObj},
response: ${response},
dio: ${dio}
    ''';
  }
}
