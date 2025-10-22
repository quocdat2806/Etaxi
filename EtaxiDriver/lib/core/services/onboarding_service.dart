import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingService {
  static const String _onboardingKey = 'isShowOnboardingPage';

  static Future<bool> shouldShowOnboarding() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_onboardingKey) ?? true;
    } catch (e) {
      debugPrint('❌ Error checking onboarding status: $e');
      return true; // Default to show onboarding on error
    }
  }

  static Future<void> markOnboardingCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_onboardingKey, false);
      debugPrint('✅ Onboarding marked as completed');
    } catch (e) {
      debugPrint('❌ Error saving onboarding status: $e');
    }
  }

  static Future<void> resetOnboardingStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_onboardingKey, true);
      debugPrint('✅ Onboarding status reset');
    } catch (e) {
      debugPrint('❌ Error resetting onboarding status: $e');
    }
  }
}
