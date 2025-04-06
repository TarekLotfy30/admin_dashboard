import 'package:flutter/material.dart';

import 'expenses_cards_section.dart';
import 'header_section.dart';

class ALLExpensesContainer extends StatelessWidget {
  const ALLExpensesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSection(),
          SizedBox(height: 16),
          ExpensesCardsSection(),
        ],
      ),
    );
  }
}
