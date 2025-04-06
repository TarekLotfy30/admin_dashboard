import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import 'side_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Row(
        children: [
          //Expanded(
          // flex: 2,
          // child: CustomDrawer(),
          // ),
          CustomDrawer(),
          // Expanded(
          //   flex: 6,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 32, 
          //vertical: 40,),
          //     child: AllExpensesAndQuickInvoice(),
          //   ),
          // ),
          // Expanded(
          //   flex: 4,
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 32, top: 40),
          //     child: Placeholder(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
