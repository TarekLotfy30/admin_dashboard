import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';
import '../../components/custom_card.dart';
import '../../components/custom_circle_avatar.dart';
import 'all_expenses/all_expenses_section.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          const AllExpensesSection(),
          const SizedBox(height: 24),
          // Quick Invoice
          CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quick Invoice',
                      style: AppFonts.styleSemiBold20(context),
                    ),
                    const CustomCircleAvatar(
                      backgroundColor: AppColors.lightGray,
                      widget: Icon(
                        Icons.add,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  'Latest Transaction',
                  style: AppFonts.styleMedium16(context),
                ),
                // SizedBox(
                //   height: 72,
                //   child: ListView.separated(
                //     //scrollDirection: Axis.horizontal,
                //     itemBuilder: (context, index) => CustomUserInfoListTile(
                //       userInfo: UsersInfo.usersInfoLatestTransaction[index],
                //     ),
                //     separatorBuilder: (context, index) => const SizedBox(
                //       width: 12,
                //     ),
                //     itemCount: UsersInfo.usersInfoLatestTransaction.length,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
