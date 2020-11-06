import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:pokebox/utils/theme/Theme.dart';

import 'app/modules/pages/golpe/golpe_screen.dart';
import 'app/modules/pages/home/home_screen.dart';
import 'app/modules/pages/mais_projetos/mais_projetos_screen.dart';
import 'app/modules/pages/sobre/sobre_screen.dart';
import 'app/modules/pages/splash/splash_screen.dart';
import 'core/controller/poke_view_model/poke_view_model.dart';


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
        SobreScreen.id: (context) => SobreScreen(),
        MaisProjetosScreen.id: (context) => MaisProjetosScreen(),
      },
    );
  }
}
