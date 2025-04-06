import 'package:flutter/material.dart';

import '../../../../utils/constants/expenses_cards.dart';
import 'custom_expenses_card.dart';

class ExpensesCardsSection extends StatelessWidget {
  const ExpensesCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 216,
      child: Row(
        spacing: 12,
        children: ExpensesCards.expensesCardsList
            .map(
              (card) => CustomExpensesCard(
                expensesCard: card,
              ),
            )
            .toList(),
      ),
    );
  }
}
