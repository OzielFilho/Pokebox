import 'package:flutter/material.dart';

class Pokemon {
  String name;
  String urlImage;
  List<String> golpes;
  List typePokemon;
  Pokemon({@required this.name, this.urlImage, this.golpes,this.typePokemon});
}
