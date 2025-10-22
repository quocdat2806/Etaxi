import 'package:etaxi_user/application/authentication/authentication_bloc.dart';
import 'package:etaxi_user/presentation/pages/create_password/create_password_page.dart';
import 'package:etaxi_user/presentation/pages/login/login_page.dart';
import 'package:etaxi_user/presentation/pages/main/main_page.dart';
import 'package:etaxi_user/presentation/pages/onboarding/onboarding_page.dart';
import 'package:etaxi_user/presentation/pages/send_otp/send_otp_page.dart';
import 'package:etaxi_user/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './page_transitions.dart';
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
      GoRoute(
        name: RouterPath.splash,
        path: RouterPath.splash,
        pageBuilder: (context, state) => PageTransitions.fadeTransition(context: context, state: state, child: const SplashPage()),
      ),
      GoRoute(
        name: RouterPath.main,
        path: RouterPath.main,
        pageBuilder: (context, state) => PageTransitions.slideTransition(context: context, state: state, child: const MainPage()),
      ),
      GoRoute(
        name: RouterPath.onboarding,
        path: RouterPath.onboarding,
        pageBuilder: (context, state) => PageTransitions.slideTransition(context: context, state: state, child: const OnboardingPage()),
      ),
      GoRoute(
        name: RouterPath.login,
        path: RouterPath.login,
        pageBuilder: (context, state) => PageTransitions.slideTransition(context: context, state: state, child: const LoginPage()),
      ),
      GoRoute(
        name: RouterPath.createPassword,
        path: RouterPath.createPassword,
        pageBuilder: (context, state) => PageTransitions.slideTransition(context: context, state: state, child: const CreatePasswordPage()),
      ),
      GoRoute(
        name: RouterPath.sendOtp,
        path: RouterPath.sendOtp,
        pageBuilder: (context, state) {
          final String phoneNumber = state.extra as String;
          return PageTransitions.slideTransition(
            context: context,
            state: state,
            child: SendOtpPage(phoneNumber: phoneNumber),
          );
        },
      ),
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
