import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class SelectLanguageModal extends StatelessWidget {
  final Function(String)? onLanguageSelected;

  const SelectLanguageModal({super.key, this.onLanguageSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppDimensConstants.smallBorderRadius)),
      ),
      padding: const EdgeInsets.all(AppDimensConstants.defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDivider(),
          const SizedBox(height: AppDimensConstants.largeSpacing),
          _buildTitle(),
          const SizedBox(height: AppDimensConstants.largeSpacing),
          _buildLanguageOption(context: context, flag: AppAssets.vietnamFlag, label: 'Tiếng Việt', languageCode: 'vi'),
          const SizedBox(height: AppDimensConstants.defaultSpacing),
          _buildLanguageOption(context: context, flag: AppAssets.englishFlag, label: 'English', languageCode: 'en'),
          const SizedBox(height: AppDimensConstants.smallSpacing),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: AppDimensConstants.smallContainerSize,
      height: 4,
      decoration: BoxDecoration(color: AppColorConstants.grey, borderRadius: BorderRadius.circular(AppDimensConstants.smallBorderRadius)),
    );
  }

  Widget _buildTitle() {
    return const Text('Chọn ngôn ngữ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600));
  }

  Widget _buildLanguageOption({required BuildContext context, required String flag, required String label, required String languageCode}) {
    return InkWell(
      onTap: () {
        onLanguageSelected?.call(languageCode);
        Navigator.pop(context, languageCode);
      },
      borderRadius: BorderRadius.circular(AppDimensConstants.smallBorderRadius),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppDimensConstants.defaultPadding, horizontal: AppDimensConstants.smallPadding),
        child: Row(
          spacing: AppDimensConstants.defaultSpacing,
          children: [
            Image.asset(flag, width: AppDimensConstants.mediumIconSize, height: AppDimensConstants.mediumIconSize),
            Expanded(
              child: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }
}
