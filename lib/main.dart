import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get_it/get_it.dart';
import 'core/controller/poke_view_model/poke_view_model.dart';
import 'core/modules/app_module/app_module.dart';
import 'utils/theme/Theme.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
  ));
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
      initialRoute: "/",
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      // routes: {
      //   SplashScreem.id: (context) => SplashScreem(),
      //   HomeScreen.id: (context) => HomeScreen(),
      //   GolpeScreen.id: (context) => GolpeScreen(),
      //   SobreScreen.id: (context) => SobreScreen(),
      //   MaisProjetosScreen.id: (context) => MaisProjetosScreen(),
      // },
    );
  }
}
