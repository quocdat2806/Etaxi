import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/constants/app_images.dart';
import 'package:etaxi_user/core/constants/app_texts.dart';
import 'package:etaxi_user/core/navigation/navigation.dart';
import 'package:etaxi_user/presentation/blocs/login/login_bloc.dart';
import 'package:etaxi_user/presentation/blocs/login/login_event.dart';
import 'package:etaxi_user/presentation/blocs/login/login_state.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:etaxi_user/presentation/widgets/input/app_text_input.dart';
import 'package:etaxi_user/presentation/widgets/modal/select_language_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc _bloc;
  final TextEditingController _phoneController = TextEditingController();
  late final AppNavigator _navigator;

  @override
  void initState() {
    super.initState();
    _bloc = LoginBloc();
    _navigator = AppNavigator(context: context);
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: AppDimensConstants.defaultSpacing,
              children: [
                _buildHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppDimensConstants.defaultPadding),
                  child: Column(
                    children: [
                      _buildPhoneInput(),
                      SizedBox(height: AppDimensConstants.extraLargeSpacing),
                      _buildContinueButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(AppDimensConstants.largePadding),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFF7FFFD4), Color(0XFFE0FFFF)]),
      ),
      child: Column(children: [_buildSelectLanguageButton(), _buildTitle()]),
    );
  }

  Widget _buildSelectLanguageButton() {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SelectLanguageModal();
          },
        );
      },

      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppDimensConstants.defaultPadding, vertical: AppDimensConstants.smallPadding),
          decoration: BoxDecoration(color: AppColorConstants.white, borderRadius: BorderRadius.circular(AppDimensConstants.extraLargeBorderRadius)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: AppDimensConstants.smallPadding,
            children: [
              Image.asset(AppAssets.vietnamFlag, width: AppDimensConstants.defaultIconSize, height: AppDimensConstants.defaultIconSize),
              const Text(
                AppTextConstants.vietnamese,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColorConstants.primary),
              ),
              const Icon(Icons.keyboard_arrow_down, size: AppDimensConstants.smallIconSize),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: const Text(
          'Khởi đầu cùng Xanh!',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xff20B2AA)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildPhoneInput() {
    return AppTextInput(onChanged: (value) => _bloc.add(LoginEvent.phoneNumberChanged(value)), controller: _phoneController, hintText: AppTextConstants.phoneNumber, keyboardType: TextInputType.phone, inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(11)]);
  }

  Widget _buildContinueButton() {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.isValidPhoneNumber != current.isValidPhoneNumber,
      builder: (context, state) {
        return AppButton(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColorConstants.white),
          disabled: !state.isValidPhoneNumber,
          onPressed: () => _navigator.pushNamed(RouterPath.sendOtp, extra: state.phoneNumber),
          text: AppTextConstants.continueText,
        );
      },
    );
  }
}
