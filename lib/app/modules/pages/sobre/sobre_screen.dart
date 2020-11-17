import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../utils/widgets/drawer/drawer_pers.dart';

class SobreScreen extends StatefulWidget {
  
  @override
  _SobreScreenState createState() => _SobreScreenState();
}

class _SobreScreenState extends State<SobreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
        ),
        drawer: DrawerPers(),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Sobre',
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
                    height: 20,
                  ),
                  Text(
                    '\tO aplicativo "Pokebox" reúne seus pokemons favoritos na palma de sua mão.\n\n\tNele você pode ver imagens dos pokemons e o nome de cada um e ao clicar você pode observar os golpes do seu pokemon',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
