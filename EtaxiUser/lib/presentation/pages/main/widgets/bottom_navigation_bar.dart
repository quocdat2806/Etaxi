import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/core/constants/app_dimensions.dart';
import 'package:etaxi_user/core/constants/app_images.dart';
import 'package:etaxi_user/core/enums/main_tabs.dart';
import 'package:flutter/material.dart';

import 'navigation_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const MainBottomNavigationBar({super.key, required this.currentIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: AppDimensConstants.bottomNavigationHeight,
        child: ColoredBox(
          color: AppColorConstants.white,
          child: Row(
            children: [
              MainNavigationItem(currentIndex: currentIndex, index: MainTabs.home.tabIndex, iconPath: AppAssets.svgHome, label: MainTabs.home.label, onTap: () => onTabSelected(MainTabs.home.tabIndex)),
              MainNavigationItem(currentIndex: currentIndex, index: MainTabs.activity.tabIndex, iconPath: AppAssets.svgActivity, label: MainTabs.activity.label, onTap: () => onTabSelected(MainTabs.activity.tabIndex)),
              MainNavigationItem(currentIndex: currentIndex, index: MainTabs.discover.index, iconPath: AppAssets.svgDiscover, label: MainTabs.discover.label, onTap: () => onTabSelected(MainTabs.discover.tabIndex)),
              MainNavigationItem(currentIndex: currentIndex, index: MainTabs.notification.index, iconPath: AppAssets.svgNotification, label: MainTabs.notification.label, onTap: () => onTabSelected(MainTabs.notification.tabIndex)),
              MainNavigationItem(currentIndex: currentIndex, index: MainTabs.profile.index, iconPath: AppAssets.svgProfile, label: MainTabs.profile.label, onTap: () => onTabSelected(MainTabs.profile.tabIndex)),
            ],
          ),
        ),
      ),
    );
  }
}
