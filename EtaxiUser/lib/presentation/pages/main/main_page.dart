import 'package:etaxi_user/core/constants/app_colors.dart';
import 'package:etaxi_user/presentation/blocs/main/main_bloc.dart';
import 'package:etaxi_user/presentation/blocs/main/main_event.dart';
import 'package:etaxi_user/presentation/blocs/main/main_state.dart';
import 'package:etaxi_user/presentation/pages/activity/activity_page.dart';
import 'package:etaxi_user/presentation/pages/discover/discover_page.dart';
import 'package:etaxi_user/presentation/pages/home/home_page.dart';
import 'package:etaxi_user/presentation/pages/notification/notification_page.dart';
import 'package:etaxi_user/presentation/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/bottom_navigation_bar.dart';

final List<Widget> pageList = const <Widget>[HomePage(), ActivityPage(), DiscoverPage(), NotificationPage(), ProfilePage()];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void _onTabSelected({required BuildContext context, required int index}) {
    context.read<MainBloc>().add(MainSwitchTab(index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (_) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          final int currentIndex = state.selectedIndex;
          return Scaffold(
            backgroundColor: AppColorConstants.primary,
            body: SafeArea(
              child: IndexedStack(index: currentIndex, children: pageList),
            ),
            bottomNavigationBar: MainBottomNavigationBar(
              currentIndex: currentIndex,
              onTabSelected: (i) => _onTabSelected(context: context, index: i),
            ),
          );
        },
      ),
    );
  }
}
