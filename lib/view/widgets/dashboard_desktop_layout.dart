import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice.dart';
import 'drawer/side_drawer.dart';
import 'income/income_section.dart';
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
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoice(),
                        ),
                      ),
                      SizedBox(width: 32),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            MyCardAndTransactionHistory(),
                            SizedBox(height: 24),
                            Expanded(child: IncomeSection()),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 32),
        ],
      ),
    );
  }
}
