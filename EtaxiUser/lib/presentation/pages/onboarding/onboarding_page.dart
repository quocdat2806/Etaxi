import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:etaxi_user/core/navigation/app_navigation.dart';
import 'package:etaxi_user/core/navigation/router_path.dart';
import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_images.dart';
import 'package:etaxi_user/core/services/onboarding_service.dart';
import 'package:etaxi_user/core/constants/app_texts.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:etaxi_user/presentation/blocs/onboarding/onboarding_bloc.dart';
import 'package:etaxi_user/presentation/blocs/onboarding/onboarding_event.dart';
import 'package:etaxi_user/presentation/blocs/onboarding/onboarding_state.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  late AppNavigator _navigator;
  late OnboardingBloc _bloc;
  Timer? _timer;

  final List<String> _onboardingImages = AppImages.onboardingImages;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _navigator = AppNavigator(context: context);
    _bloc = OnboardingBloc();

    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        _startAutoAdvance();
      }
    });

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light, statusBarBrightness: Brightness.light, systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.light));
  }

  void _startAutoAdvance() {
    _scheduleNextPage();
  }

  void _scheduleNextPage() {
    final int current = _bloc.state.currentPage;
    if (current < _onboardingImages.length - 1) {
      _timer = Timer(const Duration(milliseconds: 2500), () {
        if (mounted) {
          _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _bloc.close();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark, statusBarBrightness: Brightness.light, systemNavigationBarColor: Colors.transparent, systemNavigationBarIconBrightness: Brightness.dark));

    super.dispose();
  }

  void _onPageChanged(int page) {
    _bloc.add(OnboardingEvent.pageChanged(page));
    _timer?.cancel();
    if (page < _onboardingImages.length - 1) {
      _scheduleNextPage();
    }
  }

  void _onContinuePressed() async {
    _timer?.cancel();

    final int current = _bloc.state.currentPage;
    if (current < _onboardingImages.length - 1) {
      _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      await OnboardingService.markOnboardingCompleted();
      _navigator.goNamed(RouterPath.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            BlocSelector<OnboardingBloc, OnboardingState, int>(
              selector: (state) => state.currentPage,
              builder: (context, currentPage) {
                return PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _onboardingImages.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _buildOnboardingPage(_onboardingImages[index]);
                  },
                );
              },
            ),
            Positioned(bottom: 20, left: 10, right: 10, child: _buildBottomContent()),
          ],
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(String image) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildBottomContent() {
    return Column(
      spacing: 16,
      children: [
        Text(
          AppTextConstants.welcomeToETaxi,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(value: true, onChanged: (value) {}, activeColor: AppColorConstants.primary),
            const SizedBox(width: 8),
            Expanded(
              child: RichText(
                softWrap: true,
                text: TextSpan(
                  children: [
                    TextSpan(text: AppTextConstants.byContinuing),
                    TextSpan(
                      text: AppTextConstants.termsOfService,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                    TextSpan(text: ' ${AppTextConstants.of} ${AppTextConstants.eTaxi}'),
                  ],
                ),
              ),
            ),
          ],
        ),
        AppButton(onPressed: _onContinuePressed, text: AppTextConstants.continueText),
      ],
    );
  }
}
