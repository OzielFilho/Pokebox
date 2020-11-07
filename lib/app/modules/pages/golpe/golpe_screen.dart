import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:getwidget/getwidget.dart';

import '../../../../utils/textFormat/StringFormated.dart';
import '../../../../utils/widgets/drawer/Draw.dart';

class GolpeScreen extends StatefulWidget {
  static String id = 'golpe_page_id';

  GolpeScreen({this.namePokemon, this.urlImagePokemon, this.listGolpes});
  final String namePokemon;
  final String urlImagePokemon;
  final List<String> listGolpes;
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
      ),
      drawer: Draw(),
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
                GFImageOverlay(
                  height: 250,
                  width: 250,
                  shape: BoxShape.circle,
                  image: NetworkImage(
                    args.urlImagePokemon,
                  ),
                  boxFit: BoxFit.fill,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 250,
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
