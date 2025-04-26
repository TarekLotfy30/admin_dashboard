import 'package:flutter/material.dart';

import 'all_expenses/all_expenses_section.dart';
import 'quick_invoice/quick_invoice_section.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesSection(),
        SizedBox(height: 24),
        QuickInvoiceSection(),
        SizedBox(height: 24),
      ],
    );
  }
}
