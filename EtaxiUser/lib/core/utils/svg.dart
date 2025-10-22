import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/enums/svg_size_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgUtils {
  SvgUtils._();

  static Widget icon({required String assetPath, SvgSizeType size = SvgSizeType.defaultSize, Color? color}) {
    final double iconSize = switch (size) {
      SvgSizeType.small => AppDimensConstants.smallIconSize,
      SvgSizeType.medium => AppDimensConstants.mediumIconSize,
      SvgSizeType.large => AppDimensConstants.largeIconSize,
      SvgSizeType.extra => AppDimensConstants.extraLargeIconSize,
      _ => AppDimensConstants.defaultIconSize,
    };

    return SvgPicture.asset(assetPath, width: iconSize, height: iconSize, colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : const ColorFilter.mode(AppColorConstants.black, BlendMode.srcIn));
  }
}
