import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:pokebox/app/modules/pages/home/home_screen.dart';

class SplashScreem extends StatefulWidget {
  static String id = 'splash_screen_page';
  @override
  _SplashScreemState createState() => _SplashScreemState();
}

class _SplashScreemState extends State<SplashScreem> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, HomeScreen.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FlutterIcons.pokeball_mco,
            color: Colors.white,
            size: 100,
          ),
          SizedBox(height: 15.0),
          Text(
            'Pokebox',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
