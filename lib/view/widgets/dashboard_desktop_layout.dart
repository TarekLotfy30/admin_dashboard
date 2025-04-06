import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice.dart';
import 'drawer/side_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 6,
            child: AllExpensesAndQuickInvoice(),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(right: 32, top: 40),
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
