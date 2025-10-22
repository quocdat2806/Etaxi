import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/navigation/navigation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.leading, this.actions, this.onLeadingTap, this.backgroundColor = AppColorConstants.primary, this.elevation = 0.0, this.centerTitle = true, this.titleTextStyle, this.haveBackIcon = true});

  final dynamic title;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;
  final Color backgroundColor;
  final double elevation;
  final bool centerTitle;
  final TextStyle? titleTextStyle;
  final bool haveBackIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title is String ? Text(title as String, style: titleTextStyle ?? TextStyle(fontSize: 18, fontWeight: FontWeight.bold)) : title as Widget,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      titleSpacing: 0,
      elevation: elevation,
      leading: haveBackIcon
          ? (leading ??
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColorConstants.black),
                  onPressed: onLeadingTap ?? () => _handleBack(context),
                ))
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _handleBack(BuildContext context) {
    AppNavigator(context: context).maybePop();
  }
}
