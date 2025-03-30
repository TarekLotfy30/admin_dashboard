import 'package:admin_dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'drawer_widgets/side_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Row(
        children: [
          SideDrawer(),
        ],
      ),
    );
  }
}
