import 'package:flutter/material.dart';

import '../../../components/custom_card.dart';
import 'build_expenses_card.dart';
import 'header_section.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSection(),
          SizedBox(height: 16),
          BuildExpensesCards(),
        ],
      ),
    );
  }
}
