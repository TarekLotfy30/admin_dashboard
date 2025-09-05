import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/responsive/adaptive_layout_widget.dart';
import '../../utils/responsive/size_config.dart';
import '../components/custom_app_bar.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import 'dashboard_tablet_layout.dart';
import 'drawer/side_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    log('SizeConfig.width: ${SizeConfig.width}');
    final width = SizeConfig.width;
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: width < SizeConfig.tablet ? const CustomAppBar() : null,
      drawer: width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileBuilder: (context) => const DashboardMobileLayout(),
        tabletBuilder: (context) => const DashboardTabletLayout(),
        desktopBuilder: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
