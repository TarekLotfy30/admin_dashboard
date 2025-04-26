

import 'package:flutter/material.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/styles/app_fonts.dart';
import '../../../components/custom_circle_avatar.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
