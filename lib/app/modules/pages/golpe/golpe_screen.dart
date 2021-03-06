import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../utils/textFormat/StringFormated.dart';
import '../../../../utils/widgets/drawer/drawer_pers.dart';

class GolpeScreen extends StatefulWidget {
  

  GolpeScreen(
      {this.namePokemon,
      this.urlImagePokemon,
      this.listGolpes,
      this.typePokemon});
  final String namePokemon;
  final List<String> urlImagePokemon;
  final List<String> listGolpes;
  final List typePokemon;
  @override
  _GolpeScreenState createState() => _GolpeScreenState();
}

class _GolpeScreenState extends State<GolpeScreen> {
  @override
  Widget build(BuildContext context) {
    final GolpeScreen args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: GFAppBar(
        iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, '/home'),
              child: Icon(
                FlutterIcons.home_ant,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerPers(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  args.namePokemon != null
                      ? StringFormated().stringFormated(args.namePokemon)
                      : 'Golpes',
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 15,
                ),
                GFCarousel(
                  items: args.urlImagePokemon.map(
                    (url) {
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(url,
                              fit: BoxFit.cover, width: 250.0),
                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 315,
                  child: Card(
                    color: Theme.of(context).backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                FlutterIcons.pokeball_mco,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Golpes: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                          Text(
                            StringFormated()
                                    .stringFormated(args.listGolpes[0]) +
                                '\n' +
                                StringFormated()
                                    .stringFormated(args.listGolpes[1]) +
                                '\n' +
                                StringFormated()
                                    .stringFormated(args.listGolpes[2]) +
                                '\n' +
                                StringFormated()
                                    .stringFormated(args.listGolpes[3]) +
                                '\n',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                FlutterIcons.pokeball_mco,
                                size: 25,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Tipo: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.only(left: 100),
                              itemCount: args.typePokemon.length,
                              itemBuilder: (context, index) {
                                return Text(
                                  StringFormated().stringFormated(
                                      args.typePokemon[index]['type']['name']),
                                  style: Theme.of(context).textTheme.headline2,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
