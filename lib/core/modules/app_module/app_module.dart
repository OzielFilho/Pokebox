import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../app/modules/pages/golpe/golpe_screen.dart';
import '../../../app/modules/pages/home/home_screen.dart';
import '../../../app/modules/pages/mais_projetos/mais_projetos_screen.dart';
import '../../../app/modules/pages/sobre/sobre_screen.dart';
import '../../../app/modules/pages/splash/splash_screen.dart';
import '../../../main.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
         ModularRouter(
          '/',
          child: (_, __) => SplashScreem(),
          transition: TransitionType.leftToRightWithFade,
        ),
        ModularRouter(
          '/home',
          child: (_, __) => HomeScreen(),
          transition: TransitionType.leftToRightWithFade,
        ),
        ModularRouter(
          '/golpe',
          child: (_, args) => GolpeScreen(),
          transition: TransitionType.leftToRightWithFade,
        ),
        ModularRouter(
          '/maisprojetos',
          child: (_, __) => MaisProjetosScreen(),
          transition: TransitionType.leftToRightWithFade,
        ),
        ModularRouter(
          '/sobre',
          child: (_, __) => SobreScreen(),
          transition: TransitionType.leftToRightWithFade,
        ),
      ];

  @override
  Widget get bootstrap => PokeBox();
}
