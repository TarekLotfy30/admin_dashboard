import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Constants.transactionsHistoryList
          .map(
            (e) => TransactionItem(
              transactionHistoryItem: e,
            ),
          )
          .toList(),
    );
  }
}
