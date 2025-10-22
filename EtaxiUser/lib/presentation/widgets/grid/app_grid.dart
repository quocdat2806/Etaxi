import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppGrid extends StatelessWidget {
  final int crossAxisCount;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  const AppGrid({super.key, required this.crossAxisCount, required this.itemCount, required this.itemBuilder, this.mainAxisSpacing = AppDimensConstants.defaultGridMainAxisSpacing, this.crossAxisSpacing = AppDimensConstants.defaultGridCrossAxisSpacing});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / crossAxisCount;
        final itemHeight = itemWidth * 1.2;
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount, mainAxisExtent: itemHeight, crossAxisSpacing: crossAxisSpacing, mainAxisSpacing: mainAxisSpacing),
          itemCount: itemCount,
          itemBuilder: itemBuilder,
        );
      },
    );
  }
}
