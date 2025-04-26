import 'package:flutter/material.dart';

import '../../../utils/constants/constants.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Approximate height per item
      height: Constants.transactionsHistoryList.length * 95,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => TransactionItem(
          transactionHistoryItem: Constants.transactionsHistoryList[index],
        ),
        itemCount: Constants.transactionsHistoryList.length,
      ),
    );
  }
}
