import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pokebox/app/modules/pages/GolpeScreen/GolpeScreen.dart';
import 'package:pokebox/app/modules/pages/HomeScreen/HomeScreen.dart';
import 'package:pokebox/core/helpers/assetsHelper/AssetsHelper.dart';

class Draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      color: Theme.of(context).backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GFDrawerHeader(
            closeButton: GestureDetector(child: SizedBox()),
            
            currentAccountPicture: GFAvatar(
              shape: GFAvatarShape.square,
              radius: 80.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(AssetsHelper.ashImage),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Pokemon',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'Pokemon@user.com',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                
                ListTile(
                  title: Row(
                    children: [
                      Icon(FlutterIcons.home_ant,color: Theme.of(context).primaryColor,),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Home',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, HomeScreen.id),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(FlutterIcons.pokeball_mco,color: Theme.of(context).primaryColor,),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Golpes',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, GolpeScreen.id),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(FlutterIcons.info_outline_mdi,color: Theme.of(context).primaryColor,),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Sobre',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(FlutterIcons.pokeball_mco,color: Theme.of(context).primaryColor),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Mais Projetos',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(FlutterIcons.close_mdi,color: Theme.of(context).primaryColor),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Sair',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
