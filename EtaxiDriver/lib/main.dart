import 'package:etaxi_driver/core/config/app_config.dart';
import 'package:etaxi_driver/core/di/service_locator.dart';
import 'package:etaxi_driver/core/navigation/app_router.dart';
import 'package:etaxi_driver/core/services/asset_preloader.dart';
import 'package:etaxi_driver/core/utils/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initDependencies();

  await getIt<AssetPreloader>().preloadAssets();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => KeyboardUtils.hideKeyboard(context),
      child: MaterialApp.router(
        localizationsDelegates: [AppLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
        supportedLocales: [
          Locale('en'), // English
          Locale("vi"),
        ],
        theme: ThemeData(useMaterial3: true, fontFamily: AppConfigs.fontFamily),
        routerConfig: getIt<AppRouter>().router,
      ),
    );
  }
}
