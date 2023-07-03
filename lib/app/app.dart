
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature_home/data/repository/repository.dart';
import '../feature_home/presentation/cubit/crypto_assets_cubit.dart';
import '../feature_home/presentation/cubit/live_prices_cubit.dart';
import '../feature_home/presentation/screen/home_screen.dart';
import '../generated/fonts.gen.dart';
import '../locator.dart';

/// {@template app}
/// The widget that handles the dependency injection of your application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

/// {@template app_view}
/// The widget that configures your application.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: FontFamily.poppins,
      ),
      darkTheme: ThemeData.light(useMaterial3: true),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CryptoAssetsCubit>(
            create: (BuildContext context) => CryptoAssetsCubit(
              injector.get<IRepository>(),
            ),
          ),
          BlocProvider<LivePricesCubit>(
            create: (BuildContext context) => LivePricesCubit(),
          )
        ],
        child: const CryptoStatsPage(),
      ),
    );
  }
}
