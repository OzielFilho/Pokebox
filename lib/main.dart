import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokebox/app/modules/pages/HomeScreen/HomeScreen.dart';
import 'package:pokebox/app/modules/pages/SplashScreen/SplashScreen.dart';
import 'package:pokebox/core/viewModel/poke_view_model/poke_view_model.dart';
import 'package:pokebox/utils/theme/Theme.dart';

import 'app/modules/pages/GolpeScreen/GolpeScreen.dart';

void main() {
  runApp(PokeBox());
  registerSingletons();
}

void registerSingletons() {
  var getIt = GetIt.I;

  getIt.registerSingleton<PokeViewModel>(PokeViewModel());
}

class PokeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokebox',
      theme: appTheme,
      initialRoute: SplashScreem.id,
      routes: {
        SplashScreem.id: (context) => SplashScreem(),
        HomeScreen.id: (context) => HomeScreen(),
        GolpeScreen.id: (context) => GolpeScreen(),
      },
    );
  }
}
