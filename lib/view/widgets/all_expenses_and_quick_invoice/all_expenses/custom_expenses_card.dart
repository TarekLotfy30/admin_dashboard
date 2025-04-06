import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../model/expenses_card.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_fonts.dart';
import '../../../../utils/app_images.dart';
import '../../../components/custom_circle_avatar.dart';

class CustomExpensesCard extends StatelessWidget {
  const CustomExpensesCard({super.key, required this.expensesCard});
  final ExpensesCard expensesCard;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.mediumGray,
            width: 0.2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomCircleAvatar(
                  imagePath: expensesCard.iconData,
                  backgroundColor: AppColors.lightGray,
                ),
                const Spacer(),
                SvgPicture.asset(
                  Assets.arrowRight,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const Spacer(),
            Text(
              expensesCard.title,
              style: AppFonts.styleSemiBold16(context),
            ),
            Text(
              expensesCard.date,
              style: AppFonts.styleRegular14(context),
            ),
            const Spacer(),
            Text(
              '\$ ${expensesCard.amount}',
              style: AppFonts.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}
