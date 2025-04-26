import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/responsive/adaptive_layout_widget.dart';
import '../../utils/responsive/size_config.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import 'drawer/side_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              title: const Text(
                'Dashboard',
              ),
            )
          : null,
      drawer: SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: SafeArea(
        child: AdaptiveLayout(
          mobileBuilder: (context) => const DashboardMobileLayout(),
          tabletBuilder: (context) => const SizedBox(),
          desktopBuilder: (context) => const DashboardDesktopLayout(),
        ),
      ),
    );
  }
}
