import 'package:flutter/material.dart';

import '../../../model/transaction_history.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_fonts.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionHistoryItem,
  });

  final TransactionHistory transactionHistoryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.lightGray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            transactionHistoryItem.title,
          ),
        ),
        titleTextStyle: AppFonts.styleSemiBold16(context),
        subtitle: Text(transactionHistoryItem.date),
        subtitleTextStyle: AppFonts.styleRegular16(context).copyWith(
          color: AppColors.mediumGray,
        ),
        trailing: Text(
          transactionHistoryItem.amount,
          style: AppFonts.styleSemiBold20(context).copyWith(
            color: transactionHistoryItem.isTransfer ? AppColors.red : AppColors.green,
          ),
        ),
      ),
    );
  }
}
