import 'package:admin_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:admin_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileBuilder: (context) => SizedBox(),
        tabletBuilder: (context) => SizedBox(),
        desktopBuilder: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
