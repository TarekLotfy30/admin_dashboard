import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_container.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //All Expenses
        ALLExpensesContainer(),
        //QuickInvoce
      ],
    );
  }
}
