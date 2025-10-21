import 'package:flutter/material.dart';
import 'package:etaxi_user/core/di/service_locator.dart';
import 'package:etaxi_user/core/navigation/app_router.dart';
import 'package:etaxi_user/core/services/asset_preloader.dart';

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
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'OpenSans', useMaterial3: true),
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
