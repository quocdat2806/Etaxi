import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/navigation/navigation.dart';
import 'package:etaxi_user/presentation/widgets/app_bar/app_bar.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Tạo mật khẩu", centerTitle: false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensConstants.defaultPadding),
          child: Column(
            spacing: AppDimensConstants.defaultSpacing,
            children: [
              Pinput(
                length: 6,
                focusedPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(fontSize: 20, color: AppColorConstants.black, fontWeight: FontWeight.w500),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: AppColorConstants.primary, width: 3)),
                  ),
                ),
                onCompleted: (String value) {},
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(fontSize: 20, color: AppColorConstants.black, fontWeight: FontWeight.w500),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: AppColorConstants.black, width: 3)),
                  ),
                ),
              ),
              AppButton(
                onPressed: () {
                  AppNavigator(context: context).pushReplacementNamed(RouterPath.main);
                },
                text: "Xác nhận",
                width: 140,
                textStyle: TextStyle(color: AppColorConstants.white, fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
