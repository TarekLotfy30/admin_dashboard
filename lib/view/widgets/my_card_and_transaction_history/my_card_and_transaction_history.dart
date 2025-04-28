import 'package:flutter/material.dart';

import '../../components/custom_card.dart';
import '../../components/custom_divider.dart';

import 'my_card_section.dart';
import 'transaction_history_section.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          MyCardSection(),
          const CustomDivider(),
          const TransactionHistorySection(),
        ],
      ),
    );
  }
}
