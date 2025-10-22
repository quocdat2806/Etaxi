import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/utils/svg.dart';
import 'package:flutter/material.dart';

class MainNavigationItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;
  final VoidCallback? onTap;

  const MainNavigationItem({super.key, required this.index, required this.currentIndex, required this.iconPath, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool isActive = index == currentIndex;
    final Color iconColor = isActive ? AppColorConstants.primary : AppColorConstants.grey;
    final TextStyle textStyle = isActive ? TextStyle(fontSize: 12, color: AppColorConstants.primary, fontWeight: FontWeight.w500) : TextStyle(fontSize: 12, color: AppColorConstants.grey, fontWeight: FontWeight.w500);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          spacing: AppDimensConstants.extraSmallSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgUtils.icon(assetPath: iconPath, color: iconColor),
            Text(label, style: textStyle),
          ],
        ),
      ),
    );
  }
}
