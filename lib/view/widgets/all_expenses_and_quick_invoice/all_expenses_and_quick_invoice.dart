import 'package:flutter/material.dart';

import '../../../utils/app_fonts.dart';
import 'all_expenses/all_expenses_section.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          const AllExpensesSection(),
          const SizedBox(height: 24),
          // Quick Invoice
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Expenses',
                      style: AppFonts.styleSemiBold20(context),
                    ),
                  ],
                ),
                const Row(
                  children: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
