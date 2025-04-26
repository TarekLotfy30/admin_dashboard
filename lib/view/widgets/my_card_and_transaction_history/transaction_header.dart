import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/styles/app_fonts.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppFonts.styleSemiBold20(context),
        ),
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.zero),
            minimumSize: WidgetStatePropertyAll(Size.zero),
          ),
          child: Text(
            'See all',
            style: AppFonts.styleMedium16(context).copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
