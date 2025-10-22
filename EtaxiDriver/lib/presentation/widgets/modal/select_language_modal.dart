import 'package:etaxi_driver/core/constants/app_colors.dart';
import 'package:etaxi_driver/core/constants/app_dimensions.dart';
import 'package:etaxi_driver/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class SelectLanguageModal extends StatelessWidget {
  const SelectLanguageModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(AppDimensConstants.smallBorderRadius))),
      height: 220,
      padding: EdgeInsets.all(AppDimensConstants.defaultPadding),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(color: AppColorConstants.grey, borderRadius: BorderRadius.all(Radius.circular(AppDimensConstants.smallBorderRadius))),
            ),
            SizedBox(height: 24),
            Text("Chọn ngôn ngữ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 24),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                Image.asset(AppImages.vietnamFlag, width: 24, height: 24),
                Text("Tiếng Việt", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(height: 24),
            Row(
              spacing: 16,
              children: [
                Image.asset(AppImages.englishFlag, width: 24, height: 24),
                Text("Tiếng Anh", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
