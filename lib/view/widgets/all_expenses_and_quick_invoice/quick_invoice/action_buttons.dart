import 'package:flutter/material.dart';

import '../../../../utils/colors/app_colors.dart';
import '../../../components/custom_button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            onPressed: () {},
            buttonText: 'Add more details',
            textColor: AppColors.primary,
            buttonBackgroundColor: Colors.white,
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
    );
  }
}
