import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pokebox/utils/widgets/Draw/Draw.dart';
import 'package:pokebox/utils/widgets/PokeWidget/PokeWidget.dart';

class GolpeScreen extends StatefulWidget {
  static String id = 'golpe_page_id';
  @override
  _GolpeScreenState createState() => _GolpeScreenState();
}

class _GolpeScreenState extends State<GolpeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        iconTheme: new IconThemeData(color: Theme.of(context).primaryColor),
      ),
      drawer: Draw(),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Golpes',
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0.5,
              mainAxisSpacing: 0.5,
              childAspectRatio: 0.7,
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container();
              // return PokeWidget(
              //   name: 'Pikachu',
              //   urlImage: null,
              // );
            },
          ),
        ],
      ),
    );
  }
}
