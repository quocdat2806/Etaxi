import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppTabView<T> extends StatelessWidget {
  final List<T> types;
  final int selectedIndex;
  final String Function(T) getDisplayName;
  final int Function(T) getTypeIndex;
  final void Function(int index) onTabSelected;

  const AppTabView({super.key, required this.types, required this.selectedIndex, required this.getDisplayName, required this.getTypeIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(types.length, (i) {
        final type = types[i];
        final int index = getTypeIndex(type);
        final bool isSelected = index == selectedIndex;
        final bool isFirst = i == 0;
        final bool isLast = i == types.length - 1;

        final BorderRadius borderRadius = BorderRadius.only(topLeft: isFirst ? const Radius.circular(AppDimensConstants.defaultBorderRadius) : Radius.zero, bottomLeft: isFirst ? const Radius.circular(AppDimensConstants.defaultBorderRadius) : Radius.zero, topRight: isLast ? const Radius.circular(AppDimensConstants.defaultBorderRadius) : Radius.zero, bottomRight: isLast ? const Radius.circular(AppDimensConstants.defaultBorderRadius) : Radius.zero);

        return Expanded(
          child: GestureDetector(
            onTap: () => onTabSelected(index),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isSelected ? AppColorConstants.black : AppColorConstants.primary,
                border: Border(
                  top: const BorderSide(color: AppColorConstants.black),
                  bottom: const BorderSide(color: AppColorConstants.black),
                  left: isFirst ? const BorderSide(color: AppColorConstants.black) : BorderSide.none,
                  right: const BorderSide(color: AppColorConstants.black),
                ),
                borderRadius: borderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppDimensConstants.smallPadding),
                child: Text(
                  getDisplayName(type),
                  textAlign: TextAlign.center,
                  style: isSelected ? TextStyle(fontSize: 14, color: AppColorConstants.primary, fontWeight: FontWeight.w500) : TextStyle(fontSize: 14, color: AppColorConstants.black, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
