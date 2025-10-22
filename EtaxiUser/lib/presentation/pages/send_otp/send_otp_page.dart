import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/navigation/navigation.dart';
import 'package:etaxi_user/presentation/widgets/app_bar/app_bar.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SendOtpPage extends StatelessWidget {
  final String phoneNumber;
  const SendOtpPage({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Mã xác thực OTP", centerTitle: false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensConstants.defaultPadding),
          child: Column(
            spacing: AppDimensConstants.defaultSpacing,
            children: [
              Text("Nhập  mã OTP đã được gửi đến số điện thoại của bạn $phoneNumber", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              Pinput(onCompleted: (String value) {}),
              AppButton(
                onPressed: () {
                  AppNavigator(context: context).pushNamed(RouterPath.createPassword);
                },
                text: "Gửi lại mã",
                width: 160,
                textStyle: TextStyle(color: AppColorConstants.white, fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
