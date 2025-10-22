import 'dart:async';

import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_images.dart';
import 'package:etaxi_user/core/navigation/app_navigation.dart';
import 'package:etaxi_user/core/navigation/router_path.dart';
import 'package:etaxi_user/core/services/onboarding_service.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late AppNavigator _navigator;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _navigator = AppNavigator(context: context);
    _checkOnboardingAndNavigate();
  }

  Future<void> _checkOnboardingAndNavigate() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      final shouldShowOnboarding = await OnboardingService.shouldShowOnboarding();
      if (shouldShowOnboarding) {
        _navigator.goNamed(RouterPath.onboarding);
        return;
      }
      _navigator.goNamed(RouterPath.login);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstants.white,
      body: Center(child: Image.asset(AppAssets.logo, width: 160, height: 160)),
    );
  }
}
