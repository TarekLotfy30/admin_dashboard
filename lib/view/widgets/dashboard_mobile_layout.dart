import 'package:flutter/material.dart';

import '../components/custom_card.dart';
import 'all_expenses_and_quick_invoice/all_expenses_and_quick_invoice.dart';
import 'income.dart/detailed_income_chart.dart';
import 'income.dart/income_details.dart';
import 'income.dart/income_header.dart';
import 'my_card_and_transaction_history/my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              AllExpensesAndQuickInvoice(),
              SizedBox(height: 40),
              MyCardAndTransactionHistory(),
              SizedBox(height: 24),
              Expanded(
                child: CustomCard(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IncomeHeader(),
                      SizedBox(height: 20),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: DetailedIncomeChart()),
                            Expanded(flex: 2, child: IncomeDetails()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
