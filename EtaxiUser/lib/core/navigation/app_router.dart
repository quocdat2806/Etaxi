import 'package:etaxi_user/application/authentication/authentication_bloc.dart';
import 'package:etaxi_user/presentation/pages/main/main_page.dart';
import 'package:etaxi_user/presentation/pages/onboarding/onboarding_page.dart';
import 'package:etaxi_user/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './router_path.dart';
import './router_refresh.dart';

class AppRouter {
  AppRouter(this.authBloc);

  final AuthenticationBloc authBloc;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouterPath.splash,
    refreshListenable: RouterRefresh(authBloc.stream),
    errorBuilder: (_, GoRouterState state) => const Scaffold(body: Center(child: Text('Page not found'))),
    routes: <RouteBase>[
      GoRoute(name: RouterPath.splash, path: RouterPath.splash, builder: (_, _) => const SplashPage()),
      GoRoute(name: RouterPath.main, path: RouterPath.main, builder: (_, _) => const MainPage()),
      GoRoute(name: RouterPath.onboarding, path: RouterPath.onboarding, builder: (_, _) => const OnboardingPage()),
    ],
    // redirect: (BuildContext context, GoRouterState state) {
    //   final bool isAuthenticated = authBloc.state.isAuthenticated;
    //   final String location = state.matchedLocation;
    //   final bool isAuthPage = location == RouterPath.signIn || location == RouterPath.signUp;
    //   final bool isSplashPage = location == RouterPath.splash;
    //   if (isSplashPage) {
    //     return null;
    //   }
    //   if (isAuthenticated) {
    //     if (isAuthPage) {
    //       final String? from = state.uri.queryParameters['from'];
    //       if (from != null && from.isNotEmpty) {
    //         return from;
    //       }
    //       return RouterPath.main;
    //     }
    //     return null;
    //   }

    //   if (!isAuthenticated) {
    //     if (isAuthPage) return null;
    //     return Uri(path: RouterPath.signIn, queryParameters: {'from': location}).toString();
    //   }

    //   return null;
    // },
  );
}
