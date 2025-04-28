import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_fonts.dart';
import 'transaction_header.dart';
import 'transaction_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionHeader(),
          const SizedBox(height: 20),
          Text(
            '13 April 2022',
            style: AppFonts.styleMedium16(context).copyWith(
              color: AppColors.mediumGray,
            ),
          ),
          const SizedBox(height: 16),
          const TransactionList(),
          
        ],
      ),
    );
  }
}
