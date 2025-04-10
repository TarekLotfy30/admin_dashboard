import 'package:flutter/material.dart';

import 'adaptive_layout/adaptive_layout_widget.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';

import 'drawer/side_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 600
          ? AppBar(
              title: const Text(
                'Dashboard',
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 600 ? const CustomDrawer() : null,
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
