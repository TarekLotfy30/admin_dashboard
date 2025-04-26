import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice.dart';
import 'drawer/side_drawer.dart';
import 'income.dart/income_section.dart';
import 'my_card_and_transaction_history/my_card_and_transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: SingleChildScrollView(
                child: AllExpensesAndQuickInvoice(),
              ),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MyCardAndTransactionHistory(),
                    SizedBox(height: 24),
                    IncomeSection(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 32),
        ],
      ),
    );
  }
}
