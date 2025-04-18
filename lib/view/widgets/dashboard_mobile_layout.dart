import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import 'drawer/side_drawer.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightGray,
      drawer: CustomDrawer(),
      body: SizedBox(),
    );
  }
}
