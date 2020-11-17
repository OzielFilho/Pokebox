import 'package:flutter/material.dart';

class Pokemon {
  String name;
  List<String> urlImage;
  List<String> golpes;
  List typePokemon;
  int altura;
  int peso;
  Pokemon({@required this.name, this.urlImage, this.golpes, this.typePokemon,this.altura,this.peso});
  factory Pokemon.fromJson(Map<String, dynamic> map) {
    List<String> listImages = [
      map['sprites']['front_default'],
      map['sprites']['back_default']
    ];

    List<String> listGolpes = [
      map['moves'][0]['move']['name'],
      map['moves'][1]['move']['name'],
      map['moves'][2]['move']['name'],
      map['moves'][3]['move']['name'],
    ];

    return Pokemon(
        name: map['forms'][0]['name'],
        urlImage: listImages,
        golpes: listGolpes,
        typePokemon: map['types'],
        altura: map['height'],
        peso: map['weight'],
        );
  }
}
