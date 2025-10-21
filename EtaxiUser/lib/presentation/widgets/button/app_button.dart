import 'package:flutter/material.dart';
import 'package:etaxi_user/core/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.text, this.borderRadius = 24, this.elevation = 0, this.fontSize = 16, this.backgroundColor = AppColorConstants.primary, this.foregroundColor = AppColorConstants.white, this.height = 50});
  final VoidCallback onPressed;
  final String text;
  final double borderRadius;
  final double elevation;
  final double fontSize;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          elevation: elevation,
        ),
        child: Text(text, style: TextStyle(fontSize: fontSize)),
      ),
    );
  }
}
