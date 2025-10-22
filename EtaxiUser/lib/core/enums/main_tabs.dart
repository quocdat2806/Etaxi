import 'package:etaxi_user/core/constants/app_texts.dart';

enum MainTabs {
  home(0, AppTextConstants.home),
  activity(1, AppTextConstants.activity),
  discover(2, AppTextConstants.discover),
  notification(3, AppTextConstants.notification),
  profile(4, AppTextConstants.profile);

  const MainTabs(this.tabIndex, this.label);

  final int tabIndex;
  final String label;

  static MainTabs fromIndex(int index) {
    return MainTabs.values.firstWhere((type) => type.tabIndex == index, orElse: () => MainTabs.home);
  }

  static const int totalTypes = 5;
}
