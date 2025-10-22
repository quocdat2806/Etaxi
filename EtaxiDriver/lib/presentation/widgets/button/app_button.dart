import 'package:etaxi_driver/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.text, this.borderRadius = 24, this.textStyle, this.disabled = false, this.elevation = 0, this.backgroundColor = AppColorConstants.primary, this.foregroundColor = AppColorConstants.white, this.height = 50});
  final VoidCallback onPressed;
  final String text;
  final double borderRadius;
  final double elevation;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final bool disabled;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: backgroundColor.withAlpha(80),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          elevation: elevation,
        ),
        child: Text(text, style: textStyle ?? TextStyle(fontSize: 16, color: AppColorConstants.black)),
      ),
    );
  }
}
