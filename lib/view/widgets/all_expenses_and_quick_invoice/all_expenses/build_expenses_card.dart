import 'package:flutter/material.dart';

import '../../../../utils/constants/expenses_cards.dart';
import 'all_expenses_card.dart';

class BuildExpensesCards extends StatelessWidget {
  const BuildExpensesCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: ExpensesCards.expensesCardsList
          .map(
            (card) => Expanded(
              child: CustomExpensesCard(
                expensesCard: card,
              ),
            ),
          )
          .toList(),
    );
  }
}
