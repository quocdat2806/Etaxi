import 'package:etaxi_driver/core/constants/app_images.dart';
import 'package:flutter/services.dart';

class AssetPreloader {
  static final AssetPreloader _instance = AssetPreloader._internal();
  factory AssetPreloader() => _instance;
  AssetPreloader._internal();

  bool _isPreloaded = false;

  Future<void> preloadAssets() async {
    if (_isPreloaded) return;

    try {
      await Future.wait(AppImages.onboardingImages.map(rootBundle.load));
      _isPreloaded = true;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    _isPreloaded = false;
  }
}
