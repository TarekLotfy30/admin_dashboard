import 'package:flutter/material.dart';

import '../../../../utils/constants/constants.dart';
import 'all_expenses_card.dart';

class BuildExpensesCards extends StatelessWidget {
  const BuildExpensesCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: Constants.expensesCardsList
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
