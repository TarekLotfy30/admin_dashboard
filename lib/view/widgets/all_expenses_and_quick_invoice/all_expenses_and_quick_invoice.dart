import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constants/users_info.dart';
import '../../../utils/styles/app_fonts.dart';
import '../../components/custom_button.dart';
import '../../components/custom_card.dart';
import '../../components/custom_circle_avatar.dart';
import '../../components/custom_text_field.dart';
import '../../components/custom_user_info_list_tile.dart';
import 'all_expenses/all_expenses_section.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: AllExpensesSection(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 24),
          ),
          // Quick Invoice
          SliverToBoxAdapter(
            child: CustomCard(
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
                  const SizedBox(height: 20),
                  Text(
                    'Latest Transaction',
                    style: AppFonts.styleMedium16(context),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: UsersInfo.usersInfoLatestTransaction
                          .map(
                            (item) => IntrinsicWidth(
                              child: CustomUserInfoListTile(
                                userInfo: item,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const Divider(
                    color: AppColors.lightGray,
                    thickness: 1.8,
                    height: 48,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Customer name',
                              style: AppFonts.styleMedium16(context),
                            ),
                            const SizedBox(height: 12),
                            const CustomTextField(
                              hintText: 'Type customer name',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Customer Email',
                              style: AppFonts.styleMedium16(context),
                            ),
                            const SizedBox(height: 12),
                            const CustomTextField(
                              hintText: 'Type customer email',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Item name',
                              style: AppFonts.styleMedium16(context),
                            ),
                            const SizedBox(height: 12),
                            const CustomTextField(
                              hintText: 'Type customer name',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Item mount',
                              style: AppFonts.styleMedium16(context),
                            ),
                            const SizedBox(height: 12),
                            const CustomTextField(
                              hintText: 'USD',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          onPressed: () {},
                          buttonText: 'Add more details',
                          textColor: AppColors.primary,
                          buttonBackgroundColor: Colors.transparent,
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: AppButton(
                          onPressed: () {},
                          buttonText: 'Send Money',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
