import 'package:get_it/get_it.dart';
import 'package:etaxi_user/application/authentication/authentication_bloc.dart';
import 'package:etaxi_user/core/navigation/app_router.dart';
import 'package:etaxi_user/core/services/asset_preloader.dart';

final getIt = GetIt.instance;

void initDependencies() {
  // Asset Preloader
  getIt.registerLazySingleton<AssetPreloader>(() => AssetPreloader());

  // Authentication Bloc
  getIt.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc());

  // App Router
  getIt.registerLazySingleton<AppRouter>(() => AppRouter(getIt<AuthenticationBloc>()));
}
