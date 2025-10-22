import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/constants/app_texts.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class AppSettingDialog extends StatelessWidget {
  const AppSettingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimensConstants.defaultBorderRadius)),
      title: const Text('Permission is Permanently Denied'),
      content: const Text('The app needs permission access to function properly. \nPlease go to settings to grant permission.'),
      actions: <Widget>[
        Row(
          spacing: AppDimensConstants.smallSpacing,
          children: [
            Expanded(
              child: AppButton(onPressed: () => Navigator.of(context).pop(), text: AppTextConstants.cancel, backgroundColor: Colors.transparent),
            ),
            Expanded(
              child: AppButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  openAppSettings();
                },
                text: AppTextConstants.openSetting,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
