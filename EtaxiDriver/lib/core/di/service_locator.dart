import 'package:etaxi_driver/application/authentication/authentication_bloc.dart';
import 'package:etaxi_driver/core/navigation/app_router.dart';
import 'package:etaxi_driver/core/services/asset_preloader.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDependencies() {
  // Asset Preloader
  getIt.registerLazySingleton<AssetPreloader>(() => AssetPreloader());

  // Authentication Bloc
  getIt.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc());

  // App Router
  getIt.registerLazySingleton<AppRouter>(() => AppRouter(getIt<AuthenticationBloc>()));
}
