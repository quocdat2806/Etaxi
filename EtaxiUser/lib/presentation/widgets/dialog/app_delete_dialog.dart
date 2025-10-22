import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/constants/app_texts.dart';
import 'package:etaxi_user/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';

class AppDeleteDialog extends StatelessWidget {
  final VoidCallback? onConfirm;
  const AppDeleteDialog({super.key, this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppDimensConstants.defaultBorderRadius)),
      actionsAlignment: MainAxisAlignment.center,
      content: Text(
        AppTextConstants.confirmDeleteTitle,
        style: TextStyle(fontSize: 14, color: AppColorConstants.red),
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        Row(
          spacing: AppDimensConstants.smallSpacing,
          children: [
            Expanded(
              child: AppButton(onPressed: () => Navigator.of(context).pop(), text: AppTextConstants.cancel, backgroundColor: Colors.transparent),
            ),
            Expanded(
              child: AppButton(onPressed: onConfirm ?? () {}, text: AppTextConstants.confirm, backgroundColor: Colors.transparent),
            ),
          ],
        ),
      ],
    );
  }
}
