import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../utils/widgets/drawer/drawer_pers.dart';

class MaisProjetosScreen extends StatefulWidget {
  
  @override
  _MaisProjetosScreenState createState() => _MaisProjetosScreenState();
}

class _MaisProjetosScreenState extends State<MaisProjetosScreen> {
  void launchURL() async {
    var url = 'https://github.com/OzielFilho';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Nao encontramos o link: $url';
    }
  }

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
                    'Mais Projetos',
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
                    'Para mais projetos clique no botao abaixo',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GFButton(
                    size: 50,
                    onPressed: launchURL,
                    text: 'Clique',
                    textStyle: Theme.of(context).textTheme.subtitle2,
                    color: Theme.of(context).accentColor,
                    icon: Icon(FlutterIcons.share_faw, color: Colors.white),
                    shape: GFButtonShape.square,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
